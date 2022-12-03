/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.customer;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Account;

import service.ISignupService;
import service.SignupServiceImpl;

@SuppressWarnings("serial")
@WebServlet(name = "SignupCusControl", urlPatterns = {"/Signup"})
public class SignupCusControl extends HttpServlet {
	ISignupService signupService = new SignupServiceImpl();

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
    	//response.setContentType("text/html;charset=UTF-8");
//        String user = request.getParameter("user");
//        String email = request.getParameter("email");
//        String pass = request.getParameter("pass");
//        String re_pass = request.getParameter("repass");
//
//        if(!pass.equals(re_pass))
//        {
//        	request.setAttribute("notification", "Password do not match!");
//        	request.getRequestDispatcher("/views/customer/signup.jsp").forward(request, response);
//        }
//        else
//        {
//        	Account a = signupService.checkAccountExist(user);
//        	if(a==null)
//        	{
//        		HttpSession session = request.getSession();
//            	session.setAttribute("acc", a);
//	        	signupService.signupforCustomer(user, pass, email);
//	        	request.getRequestDispatcher("/views/customer/home.jsp").forward(request, response);
//        	}
//        	else
//        	{
//        		response.sendRedirect("/views/customer/home.jsp");
//        	}
//        }
    //}
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/views/customer/signup.jsp").forward(request, response);
    	
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("repass");

        if(!pass.equals(re_pass))
        {
        	request.setAttribute("notification", "Password do not match!");
        	request.getRequestDispatcher("/views/customer/signup.jsp").forward(request, response);
        }
        else
        {
        	Account a = signupService.checkAccountExist(user);
        	if(a==null)
        	{
        		HttpSession session = request.getSession();
            	session.setAttribute("acc", a);
	        	signupService.signupforCustomer(user, pass, email);
	        	request.getRequestDispatcher("/views/customer/home.jsp").forward(request, response);
        	}
        	else
        	{
        		response.sendRedirect("/views/customer/home.jsp");
        	}
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
