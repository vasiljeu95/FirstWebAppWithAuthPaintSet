<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Authentication</title>
    <style>
        <%@ include file='css/index.css' %>
        <%@ include file='css/bootstrap.min.css' %>
    </style>
<%--    <link rel="stylesheet" type="text/css" href="css/index.css"/>--%>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>

<body>
    <div class="content">
        <form method="post" action="auth">
            Login:
            <br/>
            <input class="input" type="text" name="login" value="${login}" placeholder="Enter your login">
            <br/>
            Password:
            <br/>
            <input class="input" type="text" name="password" value="${password}" placeholder="Enter your password">
            <br/>
            <input id="submit" type="submit" value="Log in">
        </form>

        <c:if test="${not empty errorMessage}">
            ${errorMessage}
        </c:if>

        <a href="reg">Зарегистрироваться</a>
    </div>
</body>
</html>