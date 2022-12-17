package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Productdao;
import dto.Product;

@WebServlet("/deleteproduct")
public class DeleteProduct extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		Productdao dao = new Productdao();
		Product product = dao.fetchproduct(id);
		dao.deleteproduct(product);
		
		req.getRequestDispatcher("viewproduct").forward(req, resp);

	}

}
