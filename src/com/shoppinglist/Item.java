package com.shoppinglist;

public class Item {

	private final static String TABLE = "items";
	private String name;
	private int id;
	private boolean wishList;
	private Category category;
	
	public boolean isWishList() {
		return wishList;
	}
	public void setWishList(boolean wishList) {
		this.wishList = wishList;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

    public Category getCategory(){
       return category; 
    }

    public void setCategory(Category category){
        this.category = category;
    }
}
