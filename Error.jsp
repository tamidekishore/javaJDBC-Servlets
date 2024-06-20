
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" 
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
          crossorigin="anonymous">
</head>
<body>
<center>
    <div class="container">
        <div class="alert alert-danger mt-5">
            <h1>Error</h1>
            <h2><%= exception.getMessage() %></h2>
        </div>
    </div>
</center> 
</body>
</html>
