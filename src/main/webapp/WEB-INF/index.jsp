<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
<h1 style="color:red">Send an Omikuji</h1>
<div class="container">
    <form action="/submit" method="post">
        <label for="numbers">Pick a number from 5 - 25</label>
        <input type="number" id="Pick" name="numbers"><br>
        <label for="City">Enter the name of any city.</label>
        <input type="text" id="City" name="city"><br>
        <label for="Person">Enter the name of any real person</label>
        <input type="text" id="Person" name="person"><br>
        <label for="Hobby">Enter professional endeavor or hobby:</label>
        <input type="text" id="Hobby" name="hobby"><br>
        <label for="Living">Enter any type of living thing.</label>
        <input type="text" id="Living" name="living"><br>
        <label for="Nice">Say something nice to someone:</label>
        <input type="text" id="Nice" name="nice"><br>
        <h3>Send and show a friend</h3><br>
        <input type="submit" value="submit">
    </form>
</div>
</body>
</html>

