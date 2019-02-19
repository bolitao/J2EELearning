import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
        System.out.println("LoginServlet 构造方法被调用");
    }

    //    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // 设置 request 的编码
//        request.setCharacterEncoding("UTF-8");
//        String name = request.getParameter("name");
//        String password = request.getParameter("password");
//        String html = null;
//        // 比较的时候把常量字符串"admin" "123"放前面，因为用户可能没有输入账号密码就提交，servlet会获取到null。 这样就规避了空指针异常的问题
//        if ("admin".equals(name) && "123".equals(password)) {
//            html = "<div style='color:green'>成功</div>";
//        } else {
//            html = "<div style='color:red'>失败</div>";
//        }
////        response.setCharacterEncoding("UTF-8");
//        // 解决响应返回中文乱码的问题
//        response.setContentType("text/html; charset=UTF-8");
//        PrintWriter writer = response.getWriter();
//        writer.println(html);
//    }
//
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String name = req.getParameter("name");
//        String password = req.getParameter("password");
//
//        System.out.println("浏览器发出请求时的完整URL，包括协议 主机名 端口(如果有): " + req.getRequestURL());
//        System.out.println("浏览器发出请求的资源名部分，去掉了协议和主机名: " + req.getRequestURI());
//        System.out.println("请求行中的参数部分: " + req.getQueryString());
//        System.out.println("浏览器所处于的客户机的IP地址: " + req.getRemoteAddr());
//        System.out.println("浏览器所处于的客户机的主机名: " + req.getRemoteHost());
//        System.out.println("浏览器所处于的客户机使用的网络端口: " + req.getRemotePort());
//        System.out.println("服务器的IP地址: " + req.getLocalAddr());
//        System.out.println("服务器的主机名: " + req.getLocalName());
//        System.out.println("得到客户机请求方式: " + req.getMethod());
//
//        String html = null;
//        if ("admin".equals(name) && "123".equals(password)) {
//            html = "<div style='color:green'>登陆成功</div>";
//            // 服务端跳转：浏览器地址不发生变化
////            req.getRequestDispatcher("success.html").forward(req, resp);
//        } else {
//            html = "<div style='color:red'>登陆失败</div>";
//            // 服务端跳转
////            req.getRequestDispatcher("fail.html").forward(req, resp);
//            // 客户端跳转：浏览器地址会发生变化
////            resp.sendRedirect("fail.html");
//        }
//        resp.setContentType("text/html; charset=UTF-8");
//        PrintWriter writer = resp.getWriter();
//        writer.println(html);
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        if ("admin".equals(name) && "123".equals(password)) {
            req.getRequestDispatcher("success.html").forward(req, resp);
        } else {
            resp.setStatus(301);
            resp.setHeader("Location", "fail.html");
        }
    }
}
