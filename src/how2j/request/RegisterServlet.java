package how2j.request;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        System.out.println("获取单值参数 name: " + req.getParameter("name"));
        String[] hobits = req.getParameterValues("hobits");
        System.out.println("获取具有多值的参数 hobits: " + Arrays.asList(hobits));
        System.out.println("通过 getParameterMap() 遍历所有的参数: ");
        Map<String, String[]> parameters = req.getParameterMap();
        Set<String> paraNames = parameters.keySet();
        for (String param : paraNames) {
            String[] values = parameters.get(param);
            System.out.println(param + ": " + Arrays.asList(values));
        }
    }
}
