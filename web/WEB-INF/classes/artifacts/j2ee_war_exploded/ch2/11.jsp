<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/26
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>11</title>
</head>
<body style="background: cornflowerblue">
<% double a = 3, b = 4, c = 5;%>
<br>加载 triangle.jsp，计算三边长分别为 <%=a%>, <%=b%>, <%=c%> 的三角形的面积：
<jsp:include page="triangle.jsp">
    <jsp:param name="sideA" value="<%=a%>"/>
    <jsp:param name="sideB" value="<%=b%>"/>
    <jsp:param name="sideC" value="<%=c%>"/>
</jsp:include>
</body>
</html>
