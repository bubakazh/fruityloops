<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <title>Loopin' Fruits</title>
    <style>
        .container{
            padding: 15px;
        }
    </style>
</head>
<body>
    <div class = "container">
        <h3>Fruity Loops</h3>
        <table class = "table table-dark">
            <tr>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <c:forEach var = "fruit" items = "${fruits}">
            <tr>
                <td><c:out value = "${fruit.name}"></c:out></td>
                <td><c:out value = "${fruit.price}"></c:out></td>
            </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>