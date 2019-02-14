<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 01.02.19
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Lista wiadomosci Członka:</title>
    <style>
        body {
            background-image: url("http://irishgolfbreaks.com/site/assets/files/1133/mktdrv_070301_012rgb.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        .bunker {
            background-color: rgba(149, 172, 223, 0.49);
            border-radius: 15px;
            width: 400px;
        }

    </style>
</head>
<body>
<header>
    <div>
        <jsp:include page="fragments/menu.jsp"/>
    </div>
    <div id="container">

        <!-- Code generated at https://WeatherWidget.io -->
        <a class="weatherwidget-io" href="https://forecast7.com/en/51d51n0d13/london/" data-label_1="LONDON"
           data-label_2="WEATHER" data-theme="light-grey">LONDON WEATHER</a>
        <script>
            !function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (!d.getElementById(id)) {
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "https://weatherwidget.io/js/widget.min.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }
            }(document, "script", "weatherwidget-io-js");
        </script>
        <!-- / Code generated at https://WeatherWidget.io -->

    </div>
</header>
<div align="center">
    <table class="bunker">
        <h2 style="color: floralwhite">Wiadomości otrzymane: </h2>
        <c:forEach items="${messagesReceived}" var="messagesReceived">
            <div style="background-color: rgba(194,192,223,0.39)">
                <div align="center">
                    <h5 style="color: floralwhite">[${messagesReceived.date}] by:${messagesReceived.sender.fullname}
                        to:${messagesReceived.receiver.fullname}:</h5>
                    <p style="color: floralwhite">${messagesReceived.content}</p>
                    <hr/>
                </div>
            </div>
        </c:forEach>
        <h2 style="color: floralwhite">Wiadomości wysłane: </h2>
        <c:forEach items="${messagesSent}" var="messagesSent">
            <div style="background-color: rgba(194,192,223,0.39)">
                <div align="center">
                    <h5 style="color: floralwhite">[${messagesSent.date}] by:${messagesSent.sender.fullname} <br>
                        to:${messagesSent.receiver.fullname}:
                    </h5>
                    <p style="color: floralwhite">${messagesSent.content}</p>
                    <hr/>
                </div>
            </div>
        </c:forEach>
    </table>
</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
