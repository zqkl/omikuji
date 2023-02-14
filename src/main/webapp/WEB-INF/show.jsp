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
    <title>Results</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
<h1>Here's your Omikuji!</h1>
<p><c:out value="In ${numbers} years, you will"></c:out></p>
<p><c:out value="live in ${city} with"></c:out></p>
<p><c:out value="${person} as your"></c:out></p>
<p><c:out value="as your roomate, ${hobby} for a living"></c:out></p>
<p><c:out value="The next time you see a ${living}, you will have good luck!"></c:out></p>
<p><c:out value="Also, ${nice}"></c:out></p>
<a class="btn btn-primary" href="/">Go back home</a>
</body>
</html>