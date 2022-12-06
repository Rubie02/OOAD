package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IProductService;
import service.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(name = "UpdateProductControl", urlPatterns = {"/update_product"})
public class UpdateProductControl extends HttpServlet{
	IProductService proS = new ProductServiceImpl();
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
        
		String productId = req.getParameter("productId");
        String productName= req.getParameter("productName");
        int supId = Integer.parseInt(req.getParameter("supId"));
        int cateId = Integer.parseInt(req.getParameter("cateId"));
        String information = req.getParameter("information");
        float price = Float.parseFloat(req.getParameter("price"));
        String mgf = req.getParameter("mgf");
        String exp = req.getParameter("exp");
        String productImage = req.getParameter("productImage");
        
        proS.updateProduct(productId, productName, supId, cateId, information, price, mgf, exp, productImage);
        resp.sendRedirect("manager_product");
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
