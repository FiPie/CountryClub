<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 01.02.19
  Time: 07:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Kontakt</title>
    <style>
        .spaner {
            background-color: rgba(175, 223, 151, 0.51);
            border-radius: 5px;
        }

        body {
            background-image: url("https://www.gannett-cdn.com/-mm-/71c3358530835ce4d9fa490ed3a589f1a9d123e6/c=0-86-1697-1045/local/-/media/2016/07/28/Naples/Naples/636053268414765556-iStock-83659159-MEDIUM.jpg?width=3200&height=1680")
            background-repeat:no-repeat;
            background-size:cover;;
        }
    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<h1 align="center">Welcome to Lago at Mar. Here's few words about us:</h1>
<div align="center">
<p>Adres: Doughmore Bay, Doonbeg, Co. Clare, Irlandia
</p>
<p>Telefon: +353 65 905 5600</p>
</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
