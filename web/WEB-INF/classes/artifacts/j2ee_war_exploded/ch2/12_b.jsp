<%--
  User: Boli Tao
  Date: 2018/12/23
  Time: 21:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>12_b</title>
</head>
<body>
<%
    String s = request.getParameter("number");
    out.println("传来的值是" + s);
%>
</body>
</html>
