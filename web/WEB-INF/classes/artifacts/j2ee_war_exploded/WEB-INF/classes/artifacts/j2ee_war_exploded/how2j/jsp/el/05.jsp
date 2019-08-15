<%--
  Created by IntelliJ IDEA.
  User: Boli Tao
  Date: 2019/8/15
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" import="how2j.jsp.el.Hero" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>05</title>
</head>
<body>
<%
    List<String> heroes = new ArrayList<String>();
    heroes.add("塔姆");
    heroes.add("艾克");
    heroes.add("巴德");
    heroes.add("雷克赛");
    heroes.add("卡莉丝塔");
    request.setAttribute("heroes", heroes);
%>
<table width="200px" align="center" border="1" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>英雄</td>
    </tr>
    <%--heroes 里获得的是 request 里的 attributes--%>
    <c:forEach items="${heroes}" var="hero" varStatus="st">
        <tr>
            <td>${st.count}</td>
            <td>${hero}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
