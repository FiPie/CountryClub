<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 29.01.19
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous">
<link href="<c:url value="style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
      integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
      crossorigin="anonymous">  <%--ikonki budzika, ptaszka, facebooka etc.--%>
<link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
      rel="stylesheet">
<header class="page-header" style="background-color: rgba(223,217,190,0.47);
            border-radius: 10px;">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <div>
            <ol class="nav nounderline text-uppercase">
                <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px" class="nav-item ml-4">
                    <a class="nav-link color-header" href="/" style="text-decoration:none">Homepage</a>
                </li>
                <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px" class="nav-item ml-4">
                    <a class="nav-link color-header" href="/about" style="text-decoration:none">O Nas</a>
                </li>
                <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px" class="nav-item ml-4">
                    <a class="nav-link color-header" href="/register" style="text-decoration:none">Rejestracja</a>
                </li>

                <sec:authorize access="isAuthenticated()">
                    <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px"
                        class="nav-item ml-4">
                        <a class="nav-link color-header" href="/reservation" style="text-decoration:none">Zarezerwuj Dolek</a>
                    </li>
                </sec:authorize>

                <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px" class="nav-item ml-4">
                    <a class="nav-link color-header" href="/contact" style="text-decoration:none">Kontakt</a>
                </li>
                <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px" class="nav-item ml-4">
                    <a class="nav-link color-header" href="/news" style="text-decoration:none">Aktualnosci</a>
                </li>

                <sec:authorize access="isAuthenticated()">
                    <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px"
                        class="nav-item ml-4">
                        <a class="nav-link color-header" href="/message" style="text-decoration:none">Message</a>
                    </li>
                </sec:authorize>

                <sec:authorize access="isAuthenticated()">
                    <li style="display: inline-block; border: 2px solid rebeccapurple; padding: 5px"
                        class="nav-item ml-4">
                        <a class="nav-link color-header" href="/mymessages"
                           style="text-decoration:none">My messages</a>
                    </li>
                </sec:authorize>

            </ol>

            <ul class="right">
                <sec:authorize access="!isAuthenticated()">
                    <li><a href="/login">Zaloguj</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li><a href="/logout">Wyloguj</a></li>
                </sec:authorize>
            </ul>
        </div>
        <nav/>
</header>
