<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GHKJSHGAKJSHD</title>
</head>
<body>
你好 JSP
<br>
<%=new Date().toString()%>
<%
    List<String> words = new ArrayList<String>();
    words.add("today");
    words.add("is");
    words.add("a");
    words.add("great");
    words.add("day");
%>

<table width="200px" align="center" border="1" cellspacing="0">
    <%for (String word : words) {%>
    <tr>
        <td><%=word%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>