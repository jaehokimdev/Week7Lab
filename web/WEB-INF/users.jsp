<%-- 
    Document   : users
    Created on : Oct 20, 2022, 12:37:36 PM
    Author     : joekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users List</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <table border="1">
            <tr>
                <th>Email</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Role</th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <c:forEach items="users" var="user">
                <th>${user.email}</th>
                <th>${user.firstName}</th>
                <th>${user.lastName}</th>
                <th>${user.password}</th>
                <th>${user.role}</th>
                <th></th>
                <th></th>
                </c:forEach>
            </tr>
            
        </table>
    </body>
</html>
