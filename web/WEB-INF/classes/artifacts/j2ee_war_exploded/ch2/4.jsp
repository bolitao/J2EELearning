<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/9
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2_4</title>
</head>
<body>
<%! int count = 0;

    synchronized void setCount() {
        count++;
    }
%>
<%
    setCount();
    out.println("您是第 " + count + " 个访问本站的用户");
%>
</body>
</html>
