package controller.customer;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Customer;
import service.CustomerServiceImpl;
import service.ICustomerService;

@SuppressWarnings("serial")
@WebServlet(name = "BuyInCartControl", urlPatterns = {"/buy_in_cart"})
public class BuyInCartControl extends HttpServlet{
	ICustomerService cusS = new CustomerServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/customer/customer-order.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		String cusName = req.getParameter("cusName");
	    String cusAddress = req.getParameter("cusAddress");
	    String cusPhoneNumber = req.getParameter("cusPhoneNumber");
	    String username = req.getParameter("username");

		cusS.insert(cusName, cusAddress, cusPhoneNumber, username); 
	    req.getRequestDispatcher("/views/customer/order.jsp").forward(req, resp);


	}

}
