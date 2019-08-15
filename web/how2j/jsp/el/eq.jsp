<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/15
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>eq</title>
</head>
<body>
<%
    request.setAttribute("kill", "9");
%>
EL 表达式 eq 的用法<br>
${kill ge 8?"超神":"还没超神"}
</body>
</html>
