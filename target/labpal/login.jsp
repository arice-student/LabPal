<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 2/23/18
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="j_security_check" method="post">
    <table>
        <tr><td>User name: <input type="text" NAME="j_username"></td></tr>
        <tr><td>Password: <input TYPE="password" NAME="j_password"></td></tr>
        <tr><th><input type="submit" VALUE="Log In"></th></tr>
    </table>
</form>
</body>
</html>
