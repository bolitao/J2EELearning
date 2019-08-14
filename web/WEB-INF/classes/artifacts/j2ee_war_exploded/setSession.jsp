<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/10
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Set session</title>
</head>
<body>
<%
    session.setAttribute("name", "teemo");
%>
<a href="<%=response.encodeURL("getSession.jsp")%>">Get session</a>
</body>
</html>
