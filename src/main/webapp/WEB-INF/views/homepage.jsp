<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 29.01.19
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Hompage</title>
    <style>
        .spaner{background-color: rgba(175, 223, 151, 0.51);
            border-radius: 5px;
        }
        body{background-image: url("https://www.trbimg.com/img-57e95632/turbine/la-1474909904-snap-photo/");}
    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<h1 align="center">Welcome to Lago at Mar. Have a wonderful time!</h1>

<div class="spaner">
    <h2>Whose boat is this boat? Wanna Play?</h2>
</div>
<c:out value=""/>
<script src="<%request.getContextPath();%>/js/fullcalendar.js"></script>
</body>
</html>
