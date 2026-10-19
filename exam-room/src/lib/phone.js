// Spots a mobile phone held up in front of the camera, with MediaPipe's
// object detector (COCO "cell phone" class), hosted under /mediapipe and
// /models. A phone used to photograph the screen from beside or behind the
// device usually can't be seen by the front camera; this catches the cases
// where it can (phone held up, phone on a laptop user's desk in view).

let loading = null;

export function loadPhoneDetector() {
  if (!loading) {
    loading = (async () => {
      const { FilesetResolver, ObjectDetector } = await import("@mediapipe/tasks-vision");
      const fileset = await FilesetResolver.forVisionTasks(`${window.location.origin}/mediapipe`);
      return ObjectDetector.createFromOptions(fileset, {
        baseOptions: { modelAssetPath: `${window.location.origin}/models/efficientdet_lite0.tflite`, delegate: "CPU" },
        runningMode: "VIDEO",
        scoreThreshold: 0.45,
        maxResults: 3,
        categoryAllowlist: ["cell phone"],
      });
    })().catch(e => { loading = null; throw e; });
  }
  return loading;
}

let lastTs = 0;
export function phoneInView(detector, video) {
  if (!detector || !video || video.readyState < 2 || !video.videoWidth) return false;
  let ts = performance.now();
  if (ts <= lastTs) ts = lastTs + 1;
  lastTs = ts;
  try {
    return (detector.detectForVideo(video, ts).detections || []).length > 0;
  } catch (e) {
    return false;
  }
}
