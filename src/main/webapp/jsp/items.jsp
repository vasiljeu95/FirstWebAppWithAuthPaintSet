<%--
  Created by IntelliJ IDEA.
  User: stepanvasilyeu
  Date: 6.04.22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Authentication</title>
    <style>
        <%@ include file='/css/items.css' %>
    </style>
    <link rel="stylesheet" type="text/css" href="/css/items.css"/>
</head>
<body>

<header>
    <nav>
        <a href="feedback">Обратная связь</a>
    </nav>
</header>

<div class="success message">
    <c:if test="${not empty successMessage}">
        ${successMessage}
    </c:if>
</div>

<div class="wrapper">
    <div class="item">
        <img src="https://admin.cgon.ru/storage/upload/medialibrary/8854cdeb85cb29fbd8571eede588c539.png" height="50">
        <h5>Кукуруза</h5>
    </div>
    <div class="item">
        <img src="https://m.dom-eda.com/uploads/images/catalog/item/86df51de21/c25c94fe96_1000.jpg" height="50">
        <h5>Яблоко</h5>
    </div>
    <div class="item">
        <img src="https://m.dom-eda.com/uploads/images/catalog/item/53275a4f46/c4f7252f9e_1000.jpg" height="50">
        <h5>Мандарины</h5>
    </div>
    <div class="item">
        <img src="https://m.dom-eda.com/uploads/images/catalog/item/dfc9a3e974/3cbf3bd41c_1000.jpg" height="50">
        <h5>Апельсины</h5>
    </div>
</div>
</body>
</html>