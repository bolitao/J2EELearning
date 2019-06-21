package how2j.upload;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Iterator;
import java.util.List;

/**
 * @author 陶波利
 * TODO: 理解非常重要
 */
public class UploadPhotoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = null;
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        // 设置文件上传限制为 1M
        factory.setSizeThreshold(1024 * 1024);
        List items = null;
        try {
            items = upload.parseRequest(req);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        Iterator iterator = null;
        try {
            iterator = items.iterator();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        while (iterator.hasNext()) {
            FileItem item = (FileItem) iterator.next();
            if (!item.isFormField()) {
                fileName = System.currentTimeMillis() + ".jpg";
                //通过 getRealPath 获取上传文件夹，如果项目在 e:/project/j2ee/web,那么就会自动获取到 e:/project/j2ee/web/uploaded
                String photoFolder = req.getServletContext().getRealPath("upload");
                File file = new File(photoFolder, fileName);
                file.getParentFile().mkdirs();
                // 通过 item.getInputStream() 获取浏览器上传的文件的输入流
                InputStream inputStream = item.getInputStream();
                // 读文件
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                int length = 0;
                byte[] b = new byte[1024 * 1024];
                while (-1 != (length = inputStream.read(b))) {
                    fileOutputStream.write(b, 0, length);
                }
                fileOutputStream.close();
            } else {
                System.out.println(item.getFieldName());
                String value = item.getString();
                value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
                System.out.println(value);
            }
        }
        String html = "<img width='200' height='150' src='upload/%s' />";
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.format(html, fileName);
    }
}