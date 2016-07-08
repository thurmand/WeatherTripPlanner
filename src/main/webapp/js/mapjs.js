//$(document).ready(function() {
//   var myCenter = new google.maps.LatLng(30.777, 150.444);
//    var mapCanvas =  document.getElementById('map-canvas');
//    var mapOptions = {
//        center: myCenter,
//        zoom: 10
//    };
//    var map = new google.maps.Map(mapCanvas, mapOptions);
//});

function initialize(argument)
{
    var myCenter = new google.maps.LatLng(43.8332, -111.7897);
    var mapCanvas =  document.getElementById('map-canvas');
    var mapOptions = {
        center: myCenter,
        zoom: 10
    }
    var map = new google.maps.Map(mapCanvas, mapOptions);
    if (map != null)
        alert(map);
}