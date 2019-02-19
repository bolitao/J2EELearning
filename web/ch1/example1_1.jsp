<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/5
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>example1_1</title>
</head>
<body bgcolor=#00ffff>
<h3>这是一个简单的 JSP 页面</h3>
<% int i, sum = 0;
    for (i = 1; i <= 100; i++) {
        sum += i;
    }%>
<h5>
    1 到 100 的连续和是：<%= sum%>
</h5>
</body>
</html>
