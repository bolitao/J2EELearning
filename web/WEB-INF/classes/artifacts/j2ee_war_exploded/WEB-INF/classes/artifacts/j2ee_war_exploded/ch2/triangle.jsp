<%--
  User: Boli Tao
  Date: 2018/11/26
  Time: 23:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>triangle</title>
</head>
<body style="color: cornflowerblue;size: 20px">
<%! public String getArea(double a, double b, double c) {
    if (a + b > c && a + c > b && b + c > a) {
        double p = a + b + c / 2;
        double area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
        return "" + area;
    } else {
        return "输入值无法构成三角形";
    }
}%>
<% String sideA = request.getParameter("sideA");
    String sideB = request.getParameter("sideB");
    String sideC = request.getParameter("sideC");
    double a = Double.parseDouble(sideA);
    double b = Double.parseDouble(sideB);
    double c = Double.parseDouble(sideC);
    out.println();
    out.println("Test");
%>
<br><b>我是被加载的文件，负责计算三角形的面积<br>给我传递的三边是：<%=sideA%>，<%=sideB%>，<%=sideC%>
</b>
<br><b><i>三角形的面积是：<%=getArea(a, b, c)%>
</i></b>
</body>
</html>
