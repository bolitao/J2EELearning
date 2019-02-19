<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: bolitao
  Date: 18-11-7
  Time: 下午6:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    Date date;

    public int continueSum(int start, int end) {
        int sum = 0;
        for (int i = start; i <= end; i++) {
            sum += i;
        }
        return sum;
    }
%>
<html>
<head>
    <style>
        .main {
            /*width: 100%;*/
            /*height: auto;*/
            /*background-size: contain;*/
        }
    </style>
    <title>Example 2.1</title>
</head>
<div class="main">
    <body background="eva.png" style="background-size: auto">
    <font size="4" color="#f0f8ff"><br>程序片创建 Date 对象：<br/>
        <% date = new Date();
            out.println(date);
            int start = 1;
            int end = 100;
            int sum = continueSum(start, end);
        %>
        <br>从<%= start%>至<%= end%>的连续和是<%= sum%>

    </font></body>
</div>
</html>