<%--
  User: Boli Tao
  Date: 2018/12/23
  Time: 22:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>3.1 Computer</title>
</head>
<body>
<%
    String sizeA = request.getParameter("sizeA");
    String sizeB = request.getParameter("sizeB");
    String sizeC = request.getParameter("sizeC");
//    out.println(sizeB);
    double a = 0, b = 0, c = 0, p = 0, area = 0;
    try {
        a = Double.parseDouble(sizeA);
//        out.println(a);
        b = Double.parseDouble(sizeB);
        c = Double.parseDouble(sizeC);
        out.println(c);
    } catch (NumberFormatException e) {
        e.printStackTrace();
        out.println("请输入字符");
    }
    if (a != 0 && b != 0 && c != 0) {
        p = (a + b + c) / 2;
        out.println(Math.sqrt(p * (p - a) * (p - b) * (p - c)));
        out.println(Math.sqrt(p * (p - a) * (p - b) * (p - c)));
        area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
        out.println("<br>" + area);
        out.println("三角形的面积是" + area);
    }
%>
</body>
</html>
