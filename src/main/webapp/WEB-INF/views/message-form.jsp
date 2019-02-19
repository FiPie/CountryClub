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
    <style>
        body {
            background-image: url("http://irishgolfbreaks.com/site/assets/files/1133/mktdrv_070301_012rgb.jpeg");
            background-repeat:no-repeat;
            background-size:cover;
        }

        .bunker {
            background-color: rgba(149, 172, 223, 0.49);
            border-radius: 15px;
        }

    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<h1>Exclusive Luxurious Messaging System</h1>
<c:if test="${param['error'] != null}">
    <p>Błędny adresat</p>
</c:if>
<div>
    <div align="center">
        <table class="bunker">
            <tr>
                <td>
                    <form:form align="center" modelAttribute="messageForm" method="post">
                        <p align="center">Wprowadz wiadomość: </p>
                        <p align="center"><form:textarea path="content"/><form:errors path="content"/></p>


                        <p align="center">Wybierz adresata:</p><p align="center"> <form:select path="receiverId" required="true"
                                                                         items="${receivers}"
                                                                         itemLabel="fullname" itemValue="id">
                        </form:select><form:errors path="receiverId"/></p>

                        <form:hidden path="senderId" value="${sessionScope['memberId']}"/>
                        <p align="center"><input type="submit" value="Wyslij Wiadomosc"/></p>
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
