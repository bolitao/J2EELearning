<%--
  User: Boli Tao
  Date: 2018/12/23
  Time: 21:09
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>产生一个 1~10 之间的随机数</h1>
<%
    double i = (int) (Math.random() * 10 + 1);
    if (i < 5) {
%>
<jsp:forward page="12_a.jsp">
    <jsp:param name="number" value="<%=i%>"/>
</jsp:forward>
<%
} else {
%>
<jsp:forward page="12_b.jsp">
    <jsp:param name="number" value="<%=i%>"/>
</jsp:forward>
<%
    }
%>
</body>
</html>
