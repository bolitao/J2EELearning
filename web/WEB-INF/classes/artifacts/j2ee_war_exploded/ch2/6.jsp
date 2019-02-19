<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/9
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2_6</title>
</head>
<body bgcolor="black"><font size="3" color="#f5f5f5">
    <%!
        int x = 12;
        int y = 9;
    %>
    计算表达式 x + y + x % y，即 <%=x%> + <%=y%> + <%=x%> % <%=y%> 的值：
    <%=x + y + x % y%><br>
    计算表达式 x > y 即 <%=x%> > <%=y%> 的值：
    <%=x > y%><br>
    计算表达式 sin(<%=Math.PI / 2%>) 的值：
    <%=Math.sin(Math.PI / 2)%><br>
    <%
        if ((x - y) >= 0) {
    %>
    如果 x > y 即 <%=x%> > <%=y%> 则计算其差的平方根RUA：
    <%
            out.println(Math.sqrt(x - y));
        }
    %>
</font>
</body>
</html>