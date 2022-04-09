<%--
  Created by IntelliJ IDEA.
  User: stepanvasilyeu
  Date: 6.04.22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authentication</title>
</head>
<body>

<form method="post" action="registration">
    Login:
    <input type="text" name="login" placeholder="Enter your login">

    Password:
    <input type="text" name="password" placeholder="Enter your password">
    <br>
    <input type="submit" value="Зарегистрироваться">
</form>

<form action="http://localhost:8080/Auth_war_exploded/" target="_self">
    <button>Назад</button>
</form>

</body>
</html>