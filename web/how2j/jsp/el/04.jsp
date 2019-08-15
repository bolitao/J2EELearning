<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/15
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" import="how2j.jsp.el.Hero" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>04</title>
</head>
<body>
<%
    Hero hero = new Hero();
    hero.setName("盖伦");
    hero.setHp(616);
    request.setAttribute("hero", hero);
%>
英雄名字: ${hero.name}
英雄血量: ${hero.hp}
</body>
</html>
