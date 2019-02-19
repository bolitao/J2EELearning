import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("得到客户机请求方式: " + req.getMethod());
        System.out.println("获取单值参数：" + req.getParameter("name"));
        String[] hobby = req.getParameterValues("hobby");
        System.out.println("获取具有多值的参数：" + Arrays.asList(hobby));
        System.out.println("通过 getParameterMap 遍历所有参数：");
        // TODO: 理解 getParameterMap
        Map<String, String[]> parameters = req.getParameterMap();
        Set<String> paramNames = parameters.keySet();
        for (String param : paramNames) {
            String[] value = parameters.get(param);
            System.out.println(param + ": " + Arrays.asList(value));
        }
    }
}
