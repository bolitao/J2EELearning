<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/10
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get session</title>
</head>
<body>
<%
    String name = (String) session.getAttribute("name");
    out.print("session 中的 name 属性值：" + name);
%>
</body>
</html>
