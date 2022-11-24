/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Account;
import service.ISignupService;
import service.SignupServiceImpl;

@SuppressWarnings("serial")
@WebServlet(name = "SignupControl", urlPatterns = {"/signup"})
public class SignupControl extends HttpServlet {
	ISignupService signupService = new SignupServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("repass");
        
        if(!pass.equals(re_pass))
        {
        	response.sendRedirect("/views/admin/login.jsp");
        }
        else
        {
        	Account a = signupService.checkAccountExist(user);
        	if(a==null)
        	{
        		signupService.signup(user, pass);
        		request.setAttribute("mess", "Signup successful, please sign in again");
        		request.getRequestDispatcher("/views/admin/login.jsp").forward(request, response);
        		
        	}
        	else 
        	{
        		response.sendRedirect("/views/admin/login.jsp");
        	}
        }
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
    }
}
