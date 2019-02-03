<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 30.01.19
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>rejetracja</title>
    <style>
        body {
            background-image: url("http://www.golfpunkhq.com/mediaLibrary/images/english/48037.jpg");
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
<jsp:include page="fragments/menu.jsp"/>
<div align="center">

    <h1>Racz Waść rozważyć rejestrację w naszym ekskluzywnym gronie:</h1>
    <div>
        <table class="bunker">
            <tr>
                <td>

                    <form:form align="center" modelAttribute="registrationForm" method="post">
                        <p align="center">Email: <form:input path="email" type="email" required="true"/><form:errors
                                path="email"/></p>
                        <p align="center">Podaj imię i nazwisko: <form:input path="fullname"
                                                                             required="true"/><form:errors
                                path="fullname"/></p>
                        <p align="center">Hasło: <form:password path="password" required="true"/><form:errors
                                path="password"/></p>
                        <p align="center">Powtórz haslo: <form:password path="confirmedPassword"
                                                                        required="true"/><form:errors
                                path="confirmedPassword"/></p>
                        <p align="center">Wybierz Status: <form:select path="status" required="true">
                            <form:option value="gold">opcja GOLD MEMBER</form:option>
                            <form:option value="platinum">opcja PLATINUM MEMBER</form:option>
                        </form:select><form:errors path="status"/></p>
                        <p align="center">Podaj telefon: <form:input path="phone" required="true"/><form:errors
                                path="phone"/></p>
                        <p align="center">Podaj datę urodzin:<form:input path="birthday" type="date"
                                                                         required="true"/><form:errors
                                path="birthday"/></p>
                        <p align="center">Zgadzam się uiścić opłatę członkowską w wysokości 100000$ przy pierwszej
                            wizycie:
                            <form:checkbox path="annualfee"/><form:errors path="annualfee"/></p>
                        <p align="center"><form:errors path="*"/>
                            <input type="submit" value="Zarejestruj"/></p>
                    </form:form>
                </td>
            </tr>
        </table>
    </div>
</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>

</body>
</html>
<%--<fmt:formatDate value="${yourObject.date}" var="dateString" pattern="dd/MM/yyyy" />--%>
<%--<form:input path="date" value="${dateString} .. />--%>