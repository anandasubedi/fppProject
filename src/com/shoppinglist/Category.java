package com.shoppinglist;

import java.util.HashSet;

public enum Category {
	DRINKS ("Drinks"),
	FRUITS ("Fruits"),
	INGREDIENTS ("Ingredients"),
	MEAT ("Meat"),
	SNACKS ("Snacks"),	
	VEGETABLE ("Vegetable");

    private final String category;       

    private Category(String s) {
        category = s;
    }
    

    public boolean equalsName(String otherName){
        return (otherName == null)? false:category.equals(otherName);
    }

    public String toString(){
       return category;
    }
    
    public HashSet<String> getEnums() {

    	  HashSet<String> values = new HashSet<String>();

    	  for (Category c : this.values()) {
    	      values.add(c.name());
    	  }

    	  return values;
    	}

}