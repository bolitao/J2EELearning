<%--
  Created by IntelliJ IDEA.
  User: bolitao
  Date: 2018-12-26
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Cookie</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (null != cookies) {
        for (Cookie cookie : cookies) {
            out.print(cookie.getName() + ": " + cookie.getValue() + "<br>");
        }
    }
%>
</body>
</html>
