import { supabase } from "./supabase.js";

const PAYSTACK_PUBLIC_KEY = import.meta.env.VITE_PAYSTACK_PUBLIC_KEY;

export const PLANS = {
  "6month": { label: "6 Months", amountKobo: 200000, amountNaira: 2000 },
  "1year": { label: "1 Year", amountKobo: 400000, amountNaira: 4000 },
};

let scriptPromise = null;
function loadPaystackScript() {
  if (typeof window !== "undefined" && window.PaystackPop) return Promise.resolve();
  if (!scriptPromise) {
    scriptPromise = new Promise((resolve, reject) => {
      const s = document.createElement("script");
      s.src = "https://js.paystack.co/v1/inline.js";
      s.onload = resolve;
      s.onerror = () => reject(new Error("Could not load Paystack checkout — check your connection."));
      document.body.appendChild(s);
    });
  }
  return scriptPromise;
}

// Opens the Paystack Inline checkout, resolves with the transaction reference
// once the popup reports success. This is only the client-side signal — the
// caller must then send the reference to the verify-paystack-payment Edge
// Function, which is the only place that actually grants access.
export async function openPaystackCheckout({ email, plan }) {
  if (!PAYSTACK_PUBLIC_KEY) throw new Error("Payments aren't configured yet (missing Paystack public key).");
  const planInfo = PLANS[plan];
  if (!planInfo) throw new Error("Unknown plan.");

  await loadPaystackScript();

  return new Promise((resolve, reject) => {
    const handler = window.PaystackPop.setup({
      key: PAYSTACK_PUBLIC_KEY,
      email,
      amount: planInfo.amountKobo,
      currency: "NGN",
      metadata: { plan },
      callback: (response) => resolve(response.reference),
      onClose: () => reject(new Error("Payment window closed before completing.")),
    });
    handler.openIframe();
  });
}

// Sends the reference to the Edge Function for real, server-side verification.
export async function verifyPaystackPayment(reference) {
  const { data, error } = await supabase.functions.invoke("verify-paystack-payment", {
    body: { reference },
  });
  if (error) throw new Error(error.message || "Payment verification failed.");
  if (!data?.success) throw new Error(data?.error || "Payment could not be verified.");
  return data; // { success, plan, expires_at }
}
