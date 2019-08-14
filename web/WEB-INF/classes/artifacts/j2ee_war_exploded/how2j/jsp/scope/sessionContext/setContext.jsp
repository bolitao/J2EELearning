<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/13
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Set</title>
</head>
<body>
<p>SessionSet</p>
<%
    session.setAttribute("name", "sessionTest");
    response.sendRedirect("getContext.jsp");
%>
</body>
</html>
