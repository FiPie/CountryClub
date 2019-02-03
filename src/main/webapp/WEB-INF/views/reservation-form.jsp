<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 31.01.19
  Time: 07:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Rezerwacja dołka</title>
    <style>
        body {
            background-image: url("https://upload.wikimedia.org/wikipedia/commons/f/f4/Trump_Golf_Course_%283297216129%29.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }

        .bunker {
            background-color: rgba(223, 217, 190, 0.48);
            border-radius: 15px;
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


<h1 align="center">Please book your hole and state the time of your arrival, Milord.</h1>

<div align="center">
    <table class="bunker">
        <tr>
            <td>
                <form:form modelAttribute="reservationForm" method="post">

                    <p align="center">Wybierz dolek lub driving range: <form:select path="holeId" required="true"
                                                                                    items="${holes}"
                                                                                    itemLabel="name" itemValue="id">
                    </form:select><form:errors path="holeId"/></p>
                    <form:hidden path="memberId" value="${sessionScope['memberId']}"/>
                    <%--<p>[${member.fullname}]: <form:input path="member" required="true"/><form:errors path="member"/></p>--%>
                    <p align="center">Od kiedy chcesz zarezerwować dołek:<form:input path="start" type="datetime-local"
                                                                                     required="true"/><form:errors
                            path="start"/></p>
                    <p align="center">Do kiedy chcesz zarezerwować dołek:<form:input path="end" type="datetime-local"
                                                                                     required="true"/><form:errors
                            path="end"/></p>
                    <p align="center">Wybierz dodatkowe opcje: <form:select path="option">
                        <form:option value="melex">Chcę wynająć Melexa</form:option>
                        <form:option value="handy">Chcę wynająć chłopca do noszenia kiji</form:option>
                        <form:option value="cart">Chcę wynająć wózek do przewożenia kiji</form:option>
                        <form:option value="waiter">Chcę wynająć kelnera z szampanem i cygarami</form:option>
                        <form:option
                                value="melex&waiter">Chcę wynająć Melexa oraz kelnera z szampanem i cygarami</form:option>
                    </form:select><form:errors path="option"/></p>


                    <p align="center"><form:errors path="*"/>
                        <input type="submit" value="Zarezerwuj"/></p>
                </form:form>
            </td>
        </tr>
    </table>
</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
