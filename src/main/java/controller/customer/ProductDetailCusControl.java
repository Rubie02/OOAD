
package controller.customer;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Category;
import entity.Product;
import service.CategoryServiceImpl;
import service.ICategoryService;
import service.IProductService;
import service.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(name = "ProductDetailCusControl", urlPatterns = {"/product_detail"})
public class ProductDetailCusControl extends HttpServlet {
	IProductService productService = new ProductServiceImpl();
	ICategoryService categoryService = new CategoryServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("pid");
        Product p = productService.getProductByID(id);
        List<Category> listC = categoryService.getAllCategory();
        Product last = productService.getLast();
        List<Product> listP = productService.getAllProduct();
        
        request.setAttribute("detail", p);
        request.setAttribute("listP", listP);
        request.setAttribute("listC", listC);
        request.setAttribute("p", last);
        request.getRequestDispatcher("/views/customer/product-detail.jsp").forward(request, response);
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
