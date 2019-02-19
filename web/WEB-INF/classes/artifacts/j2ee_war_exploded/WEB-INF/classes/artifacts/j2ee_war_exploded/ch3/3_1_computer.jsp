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
    // TODO: 两边之和大于第三边
    String sizeA = request.getParameter("sizeA");
    String sizeB = request.getParameter("sizeB");
    String sizeC = request.getParameter("sizeC");
    double a = 0, b = 0, c = 0, p = 0, area = 0;
    try {
        a = Double.parseDouble(sizeA);
        b = Double.parseDouble(sizeB);
        c = Double.parseDouble(sizeC);
        out.println(c);
    } catch (NumberFormatException e) {
        e.printStackTrace();
        out.println("请输入字符");
    }
    if (a != 0 && b != 0 && c != 0) {
        p = (a + b + c) / 2;
        area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
        out.println("三角形的面积是" + area);
    }
%>
</body>
</html>
