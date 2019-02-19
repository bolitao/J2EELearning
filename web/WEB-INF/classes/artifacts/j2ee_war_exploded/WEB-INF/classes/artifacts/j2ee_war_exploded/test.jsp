<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="net.sf.json.JSONObject" %><%--
  User: Boli Tao
  Date: 2018/12/24
  Time: 10:49
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    PrintWriter writer = response.getWriter();
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/myim?serverTimezone=UTC", "bolitao", "bolitao");
        Statement statement = connection.createStatement();
//            String publisher = "11 bit studios";
//            String sql = "SELECT * FROM basic_information WHERE publisher = '" + publisher "'";
        String sql;
        String publisher = "11 bit studios";
        sql = "SELECT * FROM contact";
        ResultSet resultSet = statement.executeQuery(sql);
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject();
        while (resultSet.next()) {
//            out.println(resultSet.getString("userId"));
            jsonObject.put("userId", resultSet.getString("userId"));
            jsonObject.put("friendId", resultSet.getString("frientId"));
            jsonObject.put("beconeFriendDate", resultSet.getString("becomeFriendDate"));
            jsonArray.add(jsonObject);
        }
        out.println(jsonArray);
        resultSet.close();
        statement.close();
        connection.close();
//            JsonArray jsonValues = new JsonArray();
    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("SJHDJKWEHJKDS");
    } catch (Exception e) {
        System.out.println("bolitao");
        e.printStackTrace();
    }
%>
</body>
</html>
