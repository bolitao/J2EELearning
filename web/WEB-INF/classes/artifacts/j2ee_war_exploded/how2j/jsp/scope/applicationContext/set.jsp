<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/13
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>set</title>
</head>
<body>
<%
    application.setAttribute("name", "ApplicationContextTest");
    System.out.println(application == request.getServletContext());
    response.sendRedirect("get.jsp");
%>
</body>
</html>
