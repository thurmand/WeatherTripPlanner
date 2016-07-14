<%-- 
    Document   : result
    Created on : Jun 24, 2016, 5:13:30 PM
    Author     : Elfre
--%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Step" %>
<%@page import="models.Weather" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link href="css/results.css" rel="stylesheet" type="text/css"/>
        <script src='//code.jquery.com/jquery-1.10.2.js'></script>
        <script src='//code.jquery.com/ui/1.11.4/jquery-ui.js'></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>           
    </head>
    <body>           
        <nav class="navbar navbar-inverse text-center">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                         <h1 style="color: white;" >These are your direction from: ${origin} to ${destination}</h1>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-sm-1 sidenav">
                   <!-- nothing here so that we have a padding on the left -->
                </div>
                <div class="col-sm-10 text-left">
                    <h1>Welcome</h1>
                    <hr>
                    <div class="col-lg-9">
                    <div id="map-canvas" class="checkTest"></div>
                    </div>
                    <div class="col-lg-3">
                        <c:forEach var="paso" items="${weatherList}">
                            <p class="weatherList"> <img src="${paso.weatherIcon}" > ${paso.city}, ${paso.state} <br /> Forecast: <br /> ${paso.forecast} <br /> ${paso.lat} lon: ${paso.lng}</p>
                        </c:forEach>                        
                    </div>
                </div>
                <div class="col-sm-1 sidenav">
                </div>
            </div>
        </div>
        <script src="js/mapjs.js" type="text/javascript"></script>
        <script>
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
                  origin: "${origin}",
                  destination: "${destination}",
                  travelMode: google.maps.TravelMode.DRIVING
            }, function(response, status) {
                  if (status === google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                  } else {
                    window.alert('Directions request failed due to ' + status);
                  }
            });
            var marker;

            ${weatherList}.forEach(function(w) {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(w.lat, w.lng),
                    icon: w.weatherIcon
                });
                
                marker.setMap(map);
                
                // this is is the info in the maker
                var info = new google.maps.InfoWindow({
                    content: w.forecast
                });
                // this will display by default with the page
                marker.addListener('mouseover', function(){
                    info.open(map, this);
                }); 
                marker.addListener('mouseout', function(){
                    info.close();
                });
            });
        }
        </script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAceM-Z8MgL9g5mlqBrR5A2pIwiavQDXVs&callback=initialize"></script>
    </body>
</html>