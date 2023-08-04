document.addEventListener("DOMContentLoaded", function() {
  var widget = cloudinary.createUploadWidget({
    cloudName: "YOUR_CLOUD_NAME",
    uploadPreset: "YOUR_UPLOAD_PRESET",
    cropping: true,
    croppingAspectRatio: 1,
    croppingDefaultSelectionRatio: 0,
    showSkipCropButton: false,
    multiple: false
  }, function(error, result) {
    if (!error && result && result.event === "success") {
    }
  });

  document.getElementById("upload-widget").addEventListener("click", function() {
    widget.open();
  });
});
