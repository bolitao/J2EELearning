<%--
  Created by IntelliJ IDEA.
  User: bolitao
  Date: 2018-12-26
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>Cookie</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("name", "Graeen");
    cookie.setMaxAge(60 * 24 * 60);
    cookie.setPath("127.0.0.1");
    response.addCookie(cookie);
%>
<a href="getCookie.jsp">跳转到获取 cookie 的页面</a>
</body>
</html>
