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
        <h1>These are your direction from: STARTING-PONT to ENDING-POINT</h1>
        <div class="col-lg-1">a</div>
        <div id="map-canvas" class="checkTest"></div>
        <script src="js/mapjs.js" type="text/javascript"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAceM-Z8MgL9g5mlqBrR5A2pIwiavQDXVs&callback=initialize"></script>
        <div class="col-lg-4">
            <c:forEach var="paso" items="${pasos}">
                <p class="btn btn-success weatherList"> Distance: ${paso.distance} How long it will take: ${paso.duration}</p>
            </c:forEach>
        </div>
        <div class="col-lg-1">c</div>
    </body>
</html>