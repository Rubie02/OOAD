package controller.customer;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Account;
import entity.Customer;
import entity.Employee;
import entity.Order;
import entity.OrderDetail;
import service.CartServiceImpl;
import service.CustomerServiceImpl;
import service.ICartService;
import service.ICustomerService;

@SuppressWarnings("serial")
@WebServlet(name = "OrderListControl", urlPatterns = {"/order_list"})
public class OrderListControl extends HttpServlet{
	ICustomerService cusS = new CustomerServiceImpl();
	ICartService cartS = new CartServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/views/customer/order.jsp").forward(req, resp);
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		@SuppressWarnings("unchecked")
		Map<Integer, OrderDetail> map = (Map<Integer, OrderDetail>) req.getSession().getAttribute("cart");
		Set<Map.Entry<Integer, OrderDetail>> set = map.entrySet();
		Iterator<Map.Entry<Integer, OrderDetail>> itr = set.iterator();
		Account acc = (Account) req.getSession().getAttribute("acc");
		Customer cus = cusS.getUsername(acc.getUsername());
		Employee em = new Employee(1, "Nam", "HCM", "0234326564", 1000000, "2022-12-1");
		// check account and cart list
		if (map != null && acc != null) {
			while(itr.hasNext()) {
				Order order = new Order();
				Map.Entry<Integer, OrderDetail> entry = itr.next();
				order.setOrderId(entry.getValue().getProduct().getProductId());
				order.setCusId(cus);
				order.setOrderDate(fmt.format(date));
				order.setEmployeeId(em);
				
				cartS.insert(order);
			}
			map.clear();
			resp.sendRedirect("/views/customer/order.jsp");
		}else {
			if (acc==null) {
				resp.sendRedirect(req.getContextPath()+"/Home");
			}
			resp.sendRedirect(req.getContextPath()+"/Cart");
		}
	}
	
}
