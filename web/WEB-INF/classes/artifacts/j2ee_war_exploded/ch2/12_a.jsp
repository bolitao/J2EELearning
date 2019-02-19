<%--
  User: Boli Tao
  Date: 2018/12/23
  Time: 21:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>12_a</title>
</head>
<body bgcolor="#87cefa">
<%
    String s = request.getParameter("number");
    out.println("传过来的值是" + s);
%>
</body>
</html>
