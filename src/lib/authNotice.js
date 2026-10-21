// True when the device clock is more than 5 minutes away from the server's,
// judged by the "issued at" time inside an access token.
// A wrong clock makes every new session look already expired, so Supabase
// drops it at once and the student lands back on the login page silently.
//
// A token issued "in the future" always means the clock is behind. A token
// issued long ago only means the clock is ahead if the server has *just* sent
// it (fresh = a new sign-in or refresh). A saved login reloaded after the
// student was away is legitimately old and must not be treated as a wrong clock.
export function clockIsWrong(accessToken, fresh = true) {
  try {
    const part = accessToken.split(".")[1].replace(/-/g, "+").replace(/_/g, "/");
    const { iat } = JSON.parse(atob(part.padEnd(part.length + (4 - (part.length % 4)) % 4, "=")));
    const skew = iat * 1000 - Date.now();
    return skew > 5 * 60 * 1000 || (fresh && skew < -5 * 60 * 1000);
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
