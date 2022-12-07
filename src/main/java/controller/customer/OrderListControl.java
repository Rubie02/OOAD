package controller.customer;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Account;
import entity.Customer;
import entity.Order;
import entity.OrderDetail;
import service.CartItemServiceImpl;
import service.CartServiceImpl;
import service.CustomerServiceImpl;
import service.ICartItemService;
import service.ICartService;
import service.ICustomerService;

@SuppressWarnings("serial")
@WebServlet(name = "OrderListControl", urlPatterns = {"/order_list"})
public class OrderListControl extends HttpServlet{
	ICustomerService cusS = new CustomerServiceImpl();
	ICartService cartS = new CartServiceImpl();
	ICartItemService cartIS = new CartItemServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
//		@SuppressWarnings("unchecked")
//		Map<Integer, OrderDetail> map = (Map<Integer, OrderDetail>) req.getSession().getAttribute("cart");
//		Set<Map.Entry<Integer, OrderDetail>> set = map.entrySet();
//		Iterator<Map.Entry<Integer, OrderDetail>> itr = set.iterator();
//		Account acc = (Account) req.getSession().getAttribute("acc");
//		Customer cus = cusS.getUsername(acc.getUsername());
//		req.setAttribute("cus", cus);
//		int id = Integer.parseInt(req.getParameter("id"));
//		Order order = cartS.get(id);
//		// check account and cart list
//		if (map != null && acc != null) {
//			while(itr.hasNext()) {
//				OrderDetail od = new OrderDetail();
//				Map.Entry<Integer, OrderDetail> entry = itr.next();
//				od.setOrder(order);
//				od.setProduct(entry.getValue().getProduct());
//				od.setUnitPrice(entry.getValue().getUnitPrice());
//				od.setQuantity(entry.getValue().getQuantity());
//				od.setDiscount(0);
//				
//				cartIS.insert(od);
//			}
//			map.clear();
//			req.getRequestDispatcher("/views/customer/order.jsp").forward(req, resp);
//		}else {
//			if (acc==null) {
//				resp.sendRedirect(req.getContextPath()+"/Home");
//			}
//			resp.sendRedirect(req.getContextPath()+"/Cart");
//		}
	}
		

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8"); 
		req.setCharacterEncoding("UTF-8");
		@SuppressWarnings("unchecked")
		Map<Integer, OrderDetail> map = (Map<Integer, OrderDetail>) req.getSession().getAttribute("cart");
		Set<Map.Entry<Integer, OrderDetail>> set = map.entrySet();
		Iterator<Map.Entry<Integer, OrderDetail>> itr = set.iterator();
		Account acc = (Account) req.getSession().getAttribute("acc");
//		Customer cus = cusS.getUsername(acc.getUsername());
		int or = (int) req.getSession().getAttribute("order");
		Order order = cartS.get(or);

		// check account and cart list
		if (map != null && acc != null) {
			while(itr.hasNext()) {
				OrderDetail od = new OrderDetail();
				Map.Entry<Integer, OrderDetail> entry = itr.next();
				od.setOrder(order);
				od.setProduct(entry.getValue().getProduct());
				od.setUnitPrice(entry.getValue().getUnitPrice());
				od.setQuantity(entry.getValue().getQuantity());
				od.setDiscount(0);
				
				cartIS.insert(od);
			}
			map.clear();
//			List<OrderDetail> list_orders = cartIS.getByCusId(cus.getCusId());
//			req.setAttribute("list_orders", list_orders);
			req.getRequestDispatcher("/views/customer/order.jsp").forward(req, resp);
		}else {
			if (acc==null) {
				resp.sendRedirect(req.getContextPath()+"/Home");
			}
			resp.sendRedirect(req.getContextPath()+"/Cart");
		}
	}
	
}
