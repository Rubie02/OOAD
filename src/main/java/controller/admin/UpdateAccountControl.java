package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AccountServiceImpl;
import service.IAccountService;

@SuppressWarnings("serial")
@WebServlet(name = "UpdateAccountControl", urlPatterns = {"/update_account"})
public class UpdateAccountControl extends HttpServlet{
	IAccountService accountService = new AccountServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String user = request.getParameter("user");
        String password = request.getParameter("pass");
        int type = Integer.parseInt(request.getParameter("type"));
        String email = request.getParameter("email");
        
        
        accountService.editAccount(user, password, type, email);
        response.sendRedirect("manager_account");
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
