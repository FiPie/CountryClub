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
        .spaner{background-color: rgba(194, 192, 223, 0.45);
            border-radius: 5px;
        }
        body{background-image: url("https://www.gannett-cdn.com/-mm-/71c3358530835ce4d9fa490ed3a589f1a9d123e6/c=0-86-1697-1045/local/-/media/2016/07/28/Naples/Naples/636053268414765556-iStock-83659159-MEDIUM.jpg?width=3200&height=1680&fit=crop");
            background-repeat:no-repeat;
            background-size:cover;}
    </style>
</head>
<body>
<header>
    <jsp:include page="fragments/menu.jsp"/>
    <div id="container">

        <!-- Code generated at https://WeatherWidget.io -->
        <a class="weatherwidget-io" href="https://forecast7.com/en/51d51n0d13/london/" data-label_1="LONDON" data-label_2="WEATHER" data-theme="light-grey" >LONDON WEATHER</a>
        <script>
            !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://weatherwidget.io/js/widget.min.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","weatherwidget-io-js");
        </script>
        <!-- / Code generated at https://WeatherWidget.io -->

    </div>
</header>


<h1 align="center" style="font-family: 'Abyssinica SIL'">Welcome to Lago at Mar. Have a wonderful time!</h1>

<div class="spaner">
    <h2>Whose boat is this boat? Wanna Play?</h2>
</div>
<c:out value=""/>
<script src="<%request.getContextPath();%>/js/fullcalendar.js"></script>
<footer >
    <footer class="page-footer font-small">
        <jsp:include page="fragments/footer.jsp"/>
    </footer>

</footer>
</body>
</html>
