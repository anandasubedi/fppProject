package com.shoppinglist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WishListController
 */
public class WishListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ItemRepository itemRepo;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishListController() {
        super();
        itemRepo = new ItemRepository();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Item item = null;
		if(request.getParameter("action")!=null && request.getParameter("action").equals("add")){
			int id = Integer.parseInt(request.getParameter("itemId"));
			item = itemRepo.getItemById(id);
			item.setWishList(true);
			itemRepo.save(item);
			response.sendRedirect("");
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equals("remove")){
			int id = Integer.parseInt(request.getParameter("itemId"));
			item = itemRepo.getItemById(id);
			item.setWishList(false);
			itemRepo.save(item);
			response.sendRedirect("");
		}
		else{
			List<Item> items = itemRepo.getWishList();
			request.setAttribute("items", items);
			response.getWriter().append("Served at: ").append(request.getContextPath());
			getServletContext().getRequestDispatcher("/wishList.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
