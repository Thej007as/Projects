package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;



@WebServlet("/signup")
public class Signup extends HttpServlet{
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

		User user=new User();
		user.setName(req.getParameter("name"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setPhonenumber(Long.parseLong(req.getParameter("phonenumber")));
		user.setRole(req.getParameter("role"));
		user.setConfirmpassword(req.getParameter("confirmpassword"));
		
		
		UserDao dao=new UserDao();
		
		try {
			dao.adduser(user);
			resp.getWriter().print("<h1>Account created sucessfull</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
		} catch (Exception e) {
			resp.getWriter().print("<h1>Account already exist</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
			
		}
			
		
		
	
	}

}
