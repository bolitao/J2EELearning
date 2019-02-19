<%--
  User: Boli Tao
  Date: 2018/12/24
  Time: 21:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>4.4</title>
</head>
<body>
<jsp:useBean id="test" class="xyz.bolitao.Student" scope="request"/>
<jsp:setProperty name="test" property="name" value="张三"/>
<b>学生姓名：
    <jsp:getProperty name="test" property="name"/>
</b>
<jsp:setProperty name="zhang" property="height" value="<%=1.78%>"/>
<br>
<b>学生身高：
    <jsp:getProperty name="zhang" property="height"/>
    米
</b>
</body>
</html>
