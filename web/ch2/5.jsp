<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/9
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2_5</title>
</head>
<body>
<%
    int number = (int) (Math.random() * 10);
    if (number <= 5) {
%>
<center><h2>EVA</h2><img src="eva.png" width="1280"></center>
<%
} else {
%>
<center><h2>DS3</h2><img src="ds3.jpg" width="1280"></center>
<%
    }
%>
</body>
</html>
