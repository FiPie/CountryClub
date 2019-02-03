<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 01.02.19
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Umowione gry:</title>
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
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
