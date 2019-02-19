<%--
  Created by IntelliJ IDEA.
  User: bolitao
  Date: 2018-12-26
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jump</title>
</head>
<body>
<%
    //    客户端跳转，地址改变
//    response.sendRedirect("index.jsp");
//    服务端跳转，地址不改变
//    request.getRequestDispatcher("index.jsp").forward(request, response);
%>
<%--动作标记，地址不改变--%>
<jsp:forward page="index.jsp"/>
</body>
</html>
