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
@WebServlet(name = "AddAccountControl", urlPatterns = {"/add_account"})
public class AddAccountControl extends HttpServlet {
	IAccountService accountService = new AccountServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String user = request.getParameter("user");
        String password = request.getParameter("pass");
        int type = Integer.parseInt(request.getParameter("type"));
        String email = request.getParameter("email");
        
        
        accountService.insertAccount(user, password, type, email);
        response.sendRedirect("manager_account");
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
