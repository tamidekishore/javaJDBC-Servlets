
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" 
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
          crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color:salmon">
        <div class="container">
            <a href="https://www.javaguides.net" class="navbar-brand">User Management App</a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<br>

<div class="container">
    <h3 class="text-center">List of Users</h3>
    <hr>
    <div class="text-left mb-3">
        <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
    </div>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.country}" /></td>
                    <td>
                        <a href="edit?id=${user.id}" class="btn btn-primary btn-sm">Edit</a>
                        <a href="delete?id=${user.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>



