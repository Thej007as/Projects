package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Productdao;
import dto.Product;
import dto.User;

@WebServlet("/view")
public class customerview extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		if (user == null) {
			resp.getWriter().print("<h1>Session Expired</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
		} else {
			Productdao dao = new Productdao();
			List<Product> list = dao.productview();
			if (list.isEmpty()) {
				resp.getWriter().print("<h1>There are no products</h1>");
				req.getRequestDispatcher("customer.html").include(req, resp);

			} else {
				req.getSession().setAttribute("product", list);
				req.getRequestDispatcher("viewproduct.jsp").forward(req, resp);

			}
		}

	}
}