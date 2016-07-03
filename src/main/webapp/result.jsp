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
    </head>
    <body>
        <h1>These are your directions:</h1>
        <ul>
        <c:forEach var="paso" items="${pasos}">
            <li>
                <ul>
                    <li>
                        Starting point: ${paso.startLocation}
                    </li>
                    <li>
                        Distance: ${paso.distance}
                    </li>
                    <li>
                        How long it will take: ${paso.duration}
                    </li>
                    <li>
                        End Location: ${paso.endLocation}
                    </li>
                    <ul>
                        <c:forEach var="weather" items="${paso.weatherList}">
                        <li>
                            City: ${weather.city}
                        </li>
                        <li>
                            State: ${weather.state}
                        </li>
                        <li>
                            Forecast: ${weather.forecast}
                        </li>
                        </c:forEach>
                    </ul>
                </ul>
            </li>
        </c:forEach>
        </ul>
    </body>
</html>
