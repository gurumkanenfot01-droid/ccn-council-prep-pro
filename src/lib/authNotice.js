// True when the device clock is more than 5 minutes away from the server's,
// judged by the "issued at" time inside an access token the server just sent.
// A wrong clock makes every new session look already expired, so Supabase
// drops it at once and the student lands back on the login page silently.
export function clockIsWrong(accessToken) {
  try {
    const part = accessToken.split(".")[1].replace(/-/g, "+").replace(/_/g, "/");
    const { iat } = JSON.parse(atob(part.padEnd(part.length + (4 - (part.length % 4)) % 4, "=")));
    return Math.abs(iat * 1000 - Date.now()) > 5 * 60 * 1000;
  } catch (e) {
    return false;
  }
}

export const CLOCK_WRONG_MESSAGE =
  "Your password is correct, but this device's date and time are wrong, so the login can't be kept. " +
  "Go to Settings → General → Date & Time, turn on \"Set Automatically\", then log in again.";
export const SESSION_LOST_MESSAGE =
  "You were logged out because the login couldn't be kept on this device. " +
  "Check that Settings → General → Date & Time is set automatically, turn off Private Browsing, " +
  "and make sure Settings → Safari → \"Block All Cookies\" is off. Then log in again.";
