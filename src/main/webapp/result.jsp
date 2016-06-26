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
        <h1>This are your direction:</h1>
        <c:forEach var="paso" items="${pasos}">
            <li>Starting point: ${paso.startLocation} Distance: ${paso.distance} How long it will take: ${paso.duration} End Location: ${paso.endLocation}</li>
        </c:forEach>
    </body>
</html>
