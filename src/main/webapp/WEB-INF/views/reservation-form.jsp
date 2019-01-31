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
</head>
<body>
<h1>Please book your hole and state the time of your arrival, Milord.</h1>
<div>
    <form:form modelAttribute="reservationForm" method="post">

        <p>Wybierz dolek lub driving range: <form:select path="holeId" required="true" items="${holes}"
                                                         itemLabel="name" itemValue="id">
        </form:select><form:errors path="holeId"/></p>
        <form:hidden path="memberId" value="${sessionScope['memberId']}"/>
        <%--<p>[${member.fullname}]: <form:input path="member" required="true"/><form:errors path="member"/></p>--%>
        <p>Od kiedy chcesz zarezerwować dołek:<form:input path="start" type="datetime-local"
                                                          required="true"/><form:errors
                path="start"/></p>
        <p>Do kiedy chcesz zarezerwować dołek:<form:input path="end" type="datetime-local" required="true"/><form:errors
                path="end"/></p>
        <p>Wybierz dodatkowe opcje: <form:select path="option">
            <form:option value="melex">Chcę wynająć Melexa</form:option>
            <form:option value="handy">Chcę wynająć chłopca do noszenia kiji</form:option>
            <form:option value="cart">Chcę wynająć wózek do przewożenia kiji</form:option>
            <form:option value="waiter">Chcę wynająć kelnera z szampanem i cygarami</form:option>
            <form:option value="melex&waiter">Chcę wynająć Melexa oraz kelnera z szampanem i cygarami</form:option>
        </form:select><form:errors path="option"/></p>


        <p><form:errors path="*"/>
            <input type="submit" value="Zarejestruj"/></p>
    </form:form>
</div>
</body>
</html>
