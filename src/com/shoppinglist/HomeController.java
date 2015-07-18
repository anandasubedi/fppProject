package com.shoppinglist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ItemRepository itemRepo;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        itemRepo = new ItemRepository();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("action")!=null && request.getParameter("action").equals("delete")){
			int id = Integer.parseInt(request.getParameter("itemId"));
			itemRepo.deleteItem(id);
			response.sendRedirect("");
		}
		else{
		List<Item> items = itemRepo.getAllItems();
		request.setAttribute("items", items);
		request.setAttribute("categories", Category.values());
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
