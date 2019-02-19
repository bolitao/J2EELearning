<%--
  User: Boli Tao
  Date: 2018/12/24
  Time: 22:42
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>4_5_b</title>
</head>
<body>
<jsp:useBean id="iPhone" class="xyz.bolitao.Goods" scope="request"/>
<jsp:setProperty name="iPhone" property="name" param="name"/>
<jsp:setProperty name="iPhone" property="price" param="price"/>
<br>名称:
<jsp:getProperty name="iPhone" property="name"/>
<br>价格：
<jsp:getProperty name="iPhone" property="price"/>
</body>
</html>
