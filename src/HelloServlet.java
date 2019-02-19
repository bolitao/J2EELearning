import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Boli Tao
 * @date 2018-12-25
 */
public class HelloServlet extends HttpServlet {

    public HelloServlet() {
        super();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String header = headerNames.nextElement();
            String value = request.getHeader(header);
            // TODO: 在控制台输出头信息
            System.out.printf("%s\t%s%n", header, value);
            // response 响应
        }
        try {
//            request.setCharacterEncoding("UTF-8");
//            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<h1>Hello Servlet!</h1>");
            response.getWriter().println(new Date().toString());
//            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.println("<div style='color:green'>我给你一拳</div>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        resp.setCharacterEncoding("UTF-8");
//        PrintWriter writer = resp.getWriter();
//        writer.println("<div style='color:green'>我给你一拳</div>");
//    }


//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        resp.setCharacterEncoding("UTF-8");
//        resp.setContentType("text/html; charset=UTF-8");
//        PrintWriter writer = resp.getWriter();
//        writer.println("<div style='color:green'>我给你一拳</div>");
//    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        // 在 web.xml 中设置 load-on-startup 后，在tomcat完全启动之前，就会打印 init of HelloServlet
        System.out.println("init of HelloServlet");
    }
}