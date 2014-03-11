<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<title>测试</title>
<meta charset="UTF-8">
</head>
<body>
<h1>测试</h1>
<table>
  <tr>
    <td colspan="2">通过Google UserService API获取当前登录的用户信息</td>
  </tr>
  <tr>
    <td>编号</td>
    <td><c:out value="${user.userId}"/></td>
  </tr>
  <tr>
    <td>邮箱</td>
    <td><c:out value="${user.email}"/></td>
  </tr>
  <tr>
    <td>姓名</td>
    <td><c:out value="${user.nickname}"/></td>
  </tr>
</table>
</body>
</html>
