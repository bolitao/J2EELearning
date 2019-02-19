<%--
  Created by IntelliJ IDEA.
  User: tblsy
  Date: 2018/11/9
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Example2_3</title>
</head>
<body>
<%!
    double multi(double x, double y) {
        return x * y;
    }

    double div(double x, double y) {
        return x / y;
    }
%>
<%
    double a = 3.5;
    int b = 15;
    out.println("调用 multi() 方法计算 " + a + " + " + b + " = " + multi(a, b) + "<br>");
    out.println(String.format("调用 div() 方法计算 %.3f / %d  = %.3f", a, b, div(a, b)));

%>
</body>
</html>
