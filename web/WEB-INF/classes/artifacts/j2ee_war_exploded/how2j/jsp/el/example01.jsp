<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/15
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>01</title>
</head>
<body>
<c:set var="name" value="${'gareen'}" scope="request"/>
通过标签获取name: <c:out value="${name}"/> <br>
通过 EL 获取 name: ${name}
</body>
</html>
