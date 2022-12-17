package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;

@WebServlet("/viewcustomer")
public class Viewcustomer extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			resp.getWriter().print("<h1>Session Expired</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
		} else {

			UserDao dao = new UserDao();
			List<User> list = dao.viewcustomer();
			

				req.getSession().setAttribute("customerList", list);
				req.getRequestDispatcher("viewcustomer.jsp").forward(req, resp);

			}

		}

	}
