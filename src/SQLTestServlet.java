import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "SQLTestServlet")
public class SQLTestServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json; charset=utf-8");
        PrintWriter writer = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/myim?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=UTF-8",
                    "bolitao", "bolitao");
            Statement statement = connection.createStatement();
            String sql;
            sql = "SELECT * FROM contact";
            ResultSet resultSet = statement.executeQuery(sql);
            JSONArray jsonArray = new JSONArray();
            JSONObject jsonObject = new JSONObject();
            while (resultSet.next()) {
                jsonObject.put("userId", resultSet.getString("userId"));
                jsonObject.put("friendId", resultSet.getString("frientId"));
                jsonObject.put("becomeFriendDate", resultSet.getString("becomeFriendDate"));
                jsonArray.add(jsonObject);
            }
            writer = response.getWriter();
            writer.println(jsonArray);
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
