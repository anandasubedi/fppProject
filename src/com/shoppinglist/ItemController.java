package com.shoppinglist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Home
 */

public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ItemRepository itemRepo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemController() {
        super();
        itemRepo = new ItemRepository();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Item item = null;
		if(request.getParameter("itemId")!=null && request.getParameter("itemId").equals("")==false){
			int id = Integer.parseInt(request.getParameter("itemId"));
			item = itemRepo.getItemById(id);
		//	System.out.println(item.getName());
			request.setAttribute("item", item);
		}
		
		request.setAttribute("categories", Category.values());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		getServletContext().getRequestDispatcher("/itemForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Validation
		
		Item item = new Item();
		if(request.getParameter("itemId").equals("")==false){
			
			item = itemRepo.getItemById(Integer.parseInt(request.getParameter("itemId")));
		}
		item.setName(request.getParameter("name"));
		item.setCategory(Category.valueOf(request.getParameter("category").toUpperCase()));
		String[] wishLists = request.getParameterValues("wishList");
		if(wishLists!=null && Integer.parseInt(wishLists[0])==1){
			item.setWishList(true);
		}
	    itemRepo.save(item);
		response.sendRedirect("");
		
	}

}
