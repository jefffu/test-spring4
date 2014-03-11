<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<meta charset="UTF-8">
</head>
<body>
<h1>登录</h1>
<form method="POST" name="loginForm" action="j_spring_security_check">
<table>
<c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
  <tr>
    <td colspan="2">${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}</td>
  </tr>
</c:if>
  <tr>
    <td>用户名：</td>
    <td><input type="text" id="logName" name="j_username" size="30" /></td>
  </tr>
  <tr>
    <td>密码：</td>
    <td><input type="password" id="logPassword" name="j_password" size="30" /></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="login" value="登录" ></td>
  </tr>
</table>
</form>
</body>
</html>
