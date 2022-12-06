package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BlogServiceImpl;
import service.IBlogService;

@SuppressWarnings("serial")
@WebServlet(name = "UpdateBlogControl", urlPatterns = {"/update_blog"})
public class UpdateBlogControl extends HttpServlet{
	IBlogService blogS = new BlogServiceImpl();
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
        String bId = req.getParameter("bId");
        String details = req.getParameter("details");
        String blogName = req.getParameter("blogName");
        String blogImage = req.getParameter("blogImage");
        
        
        blogS.updateBlog(bId, details, blogName, blogImage);
        resp.sendRedirect("manager_blog");
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(req, resp);
	}
}
