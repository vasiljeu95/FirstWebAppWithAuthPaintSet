<%--
  Created by IntelliJ IDEA.
  User: stepanvasilyeu
  Date: 6.04.22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Feedback</title>
</head>
<body>
<form method="post" action="feedback-register">
    <input type="text" name="client-name" ${client-name} placeholder="Enter you name">
    <input type="text" name="client-email" ${client-email} placeholder="Enter you email">
    <input type="text" name="client-phone" ${client-phone} placeholder="Enter you phone">

    <input type="submit" value="Response">
</form>

<div class="error container">
    <c:if test="${not empty errorMessage}">
        ${errorMessage}
    </c:if>
</div>
</body>
</html>
