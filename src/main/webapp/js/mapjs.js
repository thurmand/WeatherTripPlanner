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
    };
    
    var map = new google.maps.Map(mapCanvas, mapOptions);
    
    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer;
    
    directionsDisplay.setMap(map);
    
     directionsService.route({
          origin: "Rexburg, ID",
          destination: "Utah",
          travelMode: google.maps.TravelMode.DRIVING
        }, function(response, status) {
          if (status === google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
        
        
    var marker = new google.maps.Marker({
        position: myCenter
    });
    marker.setMap(map);
    
    var info = new google.maps.InfoWindow({
        content: "This will show in the popup"
    });
    
    info.open(map, marker);
}