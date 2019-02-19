<%--
  User: Boli Tao
  Date: 2018/12/24
  Time: 22:30
  TODO: IMPORTANT
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>4.5_a</title>
</head>
<body>
<jsp:useBean id="iPhone" class="xyz.bolitao.Goods" scope="request"/>
<form action="" method="post">
    手机名称:<input type="text" name="name">
    <br>手机价格:<input type="text" name="price">
    <br><input type="submit" value="提交给本页面">
</form>
<form action="4_5_b.jsp" method="post">
    手机名称: <input type="text" name="name"><br>
    手机价格:<input type="text" name="price"><br>
    <input type="submit" value="提交给 4_5_b.jsp 页面">
</form>
<jsp:setProperty name="iPhone" property="name" param="name"/>
<jsp:setProperty name="iPhone" property="price" param="price"/>
<br>名称：
<jsp:getProperty name="iPhone" property="name"/>
<br>
<jsp:getProperty name="iPhone" property="price"/>
</body>
</html>
