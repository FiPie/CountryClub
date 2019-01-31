<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 30.01.19
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>rejetracja</title>
    <style>
        body{background-image: url("http://www.golfpunkhq.com/mediaLibrary/images/english/48037.jpg");}

    </style>
</head>
<body>
<div>
    <div>
        <form:form modelAttribute="registrationForm" method="post">
            <p>Email: <form:input path="email" type="email" required="true"/><form:errors path="email"/> </p>
            <p>Podaj imię i nazwisko: <form:input path="fullname" required="true"/><form:errors path="fullname"/></p>
            <p>Hasło: <form:password path="password" required="true"/><form:errors path="password"/> </p>
            <p>Powtórz haslo: <form:password path="confirmedPassword" required="true"/><form:errors path="confirmedPassword"/> </p>
            <p>Wybierz Status: <form:select path="status" required="true">
                <form:option value="gold">opcja GOLD MEMBER</form:option>
                <form:option value="platinum">opcja PLATINUM MEMBER</form:option>
            </form:select><form:errors path="status"/> </p>
            <p>Podaj telefon: <form:input path="phone" required="true"/><form:errors path="phone"/> </p>
            <p>Podaj datę urodzin:<form:input path="birthday" type="date" required="true"/><form:errors path="birthday"/> </p>
            <p>Zgadzam się uiścić opłatę członkowską w wysokości 100000$ przy pierwszej wizycie: <form:checkbox path="annualfee"/><form:errors path="annualfee"/> </p>
            <p><form:errors path="*"/>
                <input type="submit" value="Zarejestruj"/> </p>
        </form:form>
    </div>
</div>



</body>
</html>
<%--<fmt:formatDate value="${yourObject.date}" var="dateString" pattern="dd/MM/yyyy" />--%>
<%--<form:input path="date" value="${dateString} .. />--%>