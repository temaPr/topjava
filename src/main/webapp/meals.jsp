<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tema
  Date: 10.12.2016
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meal list</title>
</head>
<body>

<h2><a href="index.html">Home</a></h2>
<h2>Meal list</h2>

<table border="2">
    <caption>Список еды</caption>
    <tr>
        <th>Время</th>
        <th>Описание</th>
        <th>Калории</th>
    </tr>
    <c:forEach items="${mealList}" var="meal">
    <c:if test="${meal.isExceed()}">
        <tr bgcolor="#ff0000">
            <td>${meal.getDateTimeString()}</td>
            <td>${meal.getDescription()}</td>
            <td>${meal.getCalories()}</td>
        </tr>
    </c:if>
        <c:if test="${!meal.isExceed()}">
            <tr bgcolor="#00ff00">
                <td>${meal.getDateTimeString()}</td>
                <td>${meal.getDescription()}</td>
                <td>${meal.getCalories()}</td>
            </tr>
        </c:if>

    </c:forEach>
</table>

</body>
</html>
