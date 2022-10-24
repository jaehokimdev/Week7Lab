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
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.email}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.role.role_name}</td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
        </table>
        <c:if test="${selectedUser eq null}">
            <h2>Add User</h2><br>
            <form action="users" method="post">
                Email: <input type="email" name="email" value=""><br>
                First name: <input type="text" name="firstname" value=""><br>
                Last name: <input type="text" name="lastname" value=""><br>
                Password: <input type="password" name="password" value=""><br>
                Role: <select name="role">
                    <option value="1">system admin</option>
                    <option value="2">regular user</option>
                </select><br>
                <input type="hidden" name="action" value="create">
                <input type="submit" value="Add user">
            </form>
        </c:if>
        <c:if test="${selectedUser ne null}">
            <h2>Edit User</h2><br>
            <form action="users" method="post">
                Email ${selectedUser.email}<br>
                First name: <input type="text" name="firstname" value="${selectedUser.firstName}"><br>
                Last name: <input type="text" name="lastname" value="${selectedUser.lastName}"><br>
                Password: <input type="password" name="password" value=""><br>
                Role: <select name="role" value="${selectedUser.role.role_name}">
                    <option value="system admin">system admin</option>
                    <option value="regular user">regular user</option>
                </select><br>
                <input type="hidden" name="action" value="edit">
                <input type="submit" value="update">
            </form>
                <input type="hidden" name="action" vlaue="cancel">
                <input type="button" value="Cancel">
        </c:if>
    </body>
</html>
