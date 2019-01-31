<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 29.01.19
  Time: 09:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Test</title>
</head>
<jsp:include page="fragments/menu.jsp"/>
<body>
<div>
    <sec:authorize access="isAuthenticated()">
        Czesc ${user}
    </sec:authorize>
    <sec:authorize access="hasRole('MEMBER')">
        Jestes zalogowanym Memberem! Winszujemy^^
    </sec:authorize>
</div>
</body>
</html>
