package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Productdao;
import dto.Product;

@WebServlet("/placeorder")
public class Placeorder extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Productdao productdao = new Productdao();
		resp.getWriter().print("<h1>Your order is</h1>");
		List<Product> products = new ArrayList<>();
		for (char i = 'a'; i <= 'z'; i++) {
			String a = req.getParameter(i + "");
			if (a != null) {
				int id = Integer.parseInt(a);
				Product product = productdao.fetchproduct(id);
				products.add(product);
			} else {
				continue;
			}

		}
		req.getSession().setAttribute("product", products);
		req.getRequestDispatcher("bill.jsp").forward(req, resp);

	}

}
