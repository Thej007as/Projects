package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Productdao;
import dto.Product;

@WebServlet("/updateproduct")
public class Updateproduct extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Product product=new Product();
		product.setId(Integer.parseInt(req.getParameter("id")));
		product.setName(req.getParameter("name"));
		product.setPrize(Double.parseDouble(req.getParameter("prize")));
		product.setCategory(req.getParameter("category")); 
		
		Productdao dao=new Productdao();
		dao.Updateproduct(product);
		
		
		req.getRequestDispatcher("admin.html").forward(req, resp);
		
	}

}
