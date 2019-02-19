<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/26
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page info="清华大学图像tsinghua.jpg" %>
<% String s = getServletInfo();
    String[] str = s.split("图像");
%>
<html style="text-align: center">
<head>
    <title>2_9</title>
</head>
<body style="font-size: 20px">
<br><%= str[0]%>出版社是中国著名出版社
<br><%= str[0]%>是全国著名的高等学府
</body>
</html>
