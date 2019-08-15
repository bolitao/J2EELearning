<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/10
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SetContext</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "pageContextTest");
%>
<%=pageContext.getAttribute("name")%>
<a href="getContext.jsp">GetContext</a>
</body>
</html>
