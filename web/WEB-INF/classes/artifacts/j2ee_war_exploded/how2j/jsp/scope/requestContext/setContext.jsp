<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/13
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("name", "gareen");
    response.sendRedirect("getContext.jsp");
%>

<%--<%=request.getAttribute("name")%>--%>
<a href="getContext.jsp">a 标签的跳转请求不能 Get</a>
<%--<jsp:forward page="getContext.jsp"></jsp:forward>--%>
</body>
</html>
