
package controller.customer;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Blog;
import service.BlogServiceImpl;
import service.IBlogService;

@SuppressWarnings("serial")
@WebServlet(name = "DetailBlogCusControl", urlPatterns = {"/Detailblog"})
public class DetailBlogCusControl extends HttpServlet {
	IBlogService blogService = new BlogServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String bID = request.getParameter("bID");
        List<Blog> list = blogService.getAllBlog();
        Blog p = blogService.getBlogByID(bID);
        List<Blog> listB = blogService.getAllBlog();
        
        request.setAttribute("listB", listB);
        request.setAttribute("listP", list);
        request.setAttribute("detailblog", p);
        request.getRequestDispatcher("/views/customer/blog-detail.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
