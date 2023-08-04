document.addEventListener("DOMContentLoaded", function() {
  var widget = cloudinary.createUploadWidget({
    cloudName: "ddv8elvhi",
    uploadPreset: "ml_default",
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


