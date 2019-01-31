<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja nowego użytkownika</title>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<div>
    <h3>Zarejestruj się</h3>
    <div>
        <form:form modelAttribute="newUser" method="post">
            <p>Nazwa użytkownika: <form:input path="fullname" required="true"/><form:errors path="fullname"/></p>
            <p>Email: <form:input path="email" required="true" type="email"/><form:errors path="email"/> </p>
            <p>Hasło: <form:password path="password" required="true"/><form:errors path="password"/> </p>
            <p><input type="submit" value="Zarejestruj"/></p>
        </form:form>
    </div>
</div>
</body>
</html>
