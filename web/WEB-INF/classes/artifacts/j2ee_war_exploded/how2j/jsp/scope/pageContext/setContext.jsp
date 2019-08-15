<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/13
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "gareen");
%>

<%=pageContext.getAttribute("name")%>
</body>
</html>
