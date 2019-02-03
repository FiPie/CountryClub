<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logowanie</title>
    <style>
        body{background-image: url("https://upload.wikimedia.org/wikipedia/commons/f/f4/Trump_Golf_Course_%283297216129%29.jpg")
            background-repeat:no-repeat;
            background-size:cover;;
        }

    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<div align="center">
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
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
