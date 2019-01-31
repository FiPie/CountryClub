<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logowanie</title>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<div>
    <h3>Zaloguj się</h3>
    <div>
        <form:form modelAttribute="loginFormDto" method="post" action="/login">
            <c:if test="${param['error'] != null}">
                <p>Błędne login/hasło!</p>
            </c:if>
            <p>Email: <form:input path="email" type="email" required="true"/><form:errors path="email"/></p>
            <p>Hasło: <form:password path="password" required="true"/><form:errors path="password"/></p>
            <p><input type="submit" value="Zaloguj"/></p>
        </form:form>
    </div>
</div>
</body>
</html>
