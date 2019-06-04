package how2j.request;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;

public class HelloServlet extends HttpServlet {
    @Override
    public void init() {
        System.out.println("init() of HelloServlet");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        Enumeration<String> headerNames = req.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String headerKey = headerNames.nextElement();
            String value = req.getHeader(headerKey);
            System.out.printf("%s\t%s%n", headerKey, value);
        }
        resp.getWriter().println("<h1>Hello Servlet!</h1>");
        resp.getWriter().println(new Date().toString());
    }
}
