<%--
  Created by IntelliJ IDEA.
  User: amberjones
  Date: 1/10/20s
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Get</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<h1>Get All Contacts</h1>

<a href="/contact/create">Add Contact</a>

<div class="row">
    <c:forEach var="item" items="${allContacts}">

        <div class="card blue-grey darken-1 col s6">
            <div class="card-content white-text">
            <span class="card-title">
                    ${item.firstName} ${item.lastName}
            </span>
                    ${item.phoneNumber.replaceFirst("(\\d{3})(\\d{3})(\\d+)", "($1) $2-$3")}
                <div class="row">
                    <a href="/contact/update?id=${item.id}" class="btn">
                        Update</a>
                    <form action="/contact/delete" method="post">
                        <input type="text" name="id" value="${item.id}" hidden>
                        <input type="submit" class="btn" value="delete">
                    </form>
                </div>


            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
