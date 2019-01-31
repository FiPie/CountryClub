<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 31.01.19
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Wiadomosci</title>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<h1>Exclusive Luxurious Messaging System</h1>
<c:if test="${param['error'] != null}">
    <p>Błędny adresat</p>
</c:if>

<form:form modelAttribute="messageForm" method="post">
<p>Wprowadz wiadomość: <form:textarea path="content"/><form:errors path="content"/></p>


<p>Wybierz adresata: <form:select path="receiverId" required="true" items="${receivers}"
                                                 itemLabel="fullname" itemValue="id">
</form:select><form:errors path="receiverId"/></p>

<form:hidden path="senderId" value="${sessionScope['memberId']}"/>
<%--<form:hidden path="date" value="${sessionScope['']}"/>--%>
<p><input type="submit" value="Wyslij Wiadomosc"/></p>
</form:form>
</body>
</html>
