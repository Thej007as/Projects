package controller;

import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.UserDao;
import dto.User;

@WebServlet("/login")
public class login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		UserDao dao = new UserDao();
		List<User> list = dao.login(email);
		if (list.isEmpty()) {
			resp.getWriter().print("<h1>Invalid Email</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
		} 
		else {
			User user = list.get(0);
			if (user.getPassword().equals(password)) {
				req.getSession().setAttribute("user", user);
				if (user.getRole().equals("customer")) {
					resp.getWriter().print("<h1>Login Sucessfull</h1>");
					req.getRequestDispatcher("customer.html").include(req, resp);
				}
				else {
					resp.getWriter().print("<h1> Sucessfull</h1>");
					req.getRequestDispatcher("admin.html").include(req, resp);

				}
			} 
			else {
				resp.getWriter().print("<h1>Invalid Password</h1>");
				req.getRequestDispatcher("login.html").include(req, resp);
			}

		}
		

	}
}

	
