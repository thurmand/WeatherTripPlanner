<%-- 
    Document   : result
    Created on : Jun 24, 2016, 5:13:30 PM
    Author     : Elfre
--%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Step" %>

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
        <div class="col-lg-4">
            <c:forEach var="paso" items="${weather}">
                <p class="btn btn-success weatherList"> Distance: ${paso.distance} How long it will take: ${paso.duration}</p>
            </c:forEach>
        </div>
        <div class="col-lg-1">c</div>
        
        
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- <div class="navbar-header">
                    
                </div> -->
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                         <h1 class="text-center" style="color: white;" >These are your direction from: ${origen} to ${destination}</h1>
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
                        <div class="well">
                            <p>ADS</p>
                        </div>
                        <div class="well">
                            <p>ADS</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1 sidenav">
                </div>
            </div>
        </div>
        <script src="js/mapjs.js" type="text/javascript"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAceM-Z8MgL9g5mlqBrR5A2pIwiavQDXVs&callback=initialize"></script>
    </body>
    
</html>