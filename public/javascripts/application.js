// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

/*$(function () {
  if ($('#exif_data').length > 0) {
    setTimeout(updateExif, 10000);
  }
});

function updateExif() {
  $.getScript('/images.js');
  setTimeout(updateExif, 10000);
}*/

TopUp.Host = "http://127.0.0.1/";
TopUp.images_path = "/images/top_up/";    
TopUp.addPresets({
  ".top_up": {
    layout: 'flatlook',
    effect: 'appear',
    shaded: 1,
    overlayClose: 1,
    group: "images"
  },
});