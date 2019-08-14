<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/13
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>SetOutRemove</title>
</head>
<body>
<c:set var="name" value="${'gareen'}" scope="request"/>
通过标签获取name: <c:out value="${name}"/>
<br><c:remove var="name" scope="request"/> <br>
remove 后通过标签获取name: <c:out value="${name}"/> <br>
</body>
</html>
