package com.shoppinglist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;
import java.sql.ResultSet;

public class ItemRepository {

	private Connection connection;
	private final static String TABLE = "items";
	
	 public ItemRepository() {
	        connection = DbConnection.getConnection();
	 }
	 
	public void save(Item item) {
        try {
        	String $query = "";
        	if(item.getId()!= 0){
        		$query += "UPDATE `shopping_list`.`items` SET `name` = ?,`category` = ?,`wish_list` = ?  WHERE `items`.`id` = ?";
        		}
        	else{
        		$query += "insert into "+TABLE+"(name,category,wish_list) values (?,?,?)";
        	}
            PreparedStatement preparedStatement = connection.prepareStatement($query);
            // Parameters start with 1
            preparedStatement.setString(1, item.getName());
            preparedStatement.setString(2, item.getCategory().toString());
            preparedStatement.setBoolean(3, item.isWishList());
            if(item.getId()!= 0){
            	preparedStatement.setInt(4, item.getId());
            }
            
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	public List<Item> getAllItems() {
        List<Item> items = new ArrayList<Item>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from "+TABLE);
            while (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setCategory(Category.valueOf(rs.getString("category")));
                item.setWishList(rs.getBoolean("wish_list"));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return items;
    }

	public Item getItemById(int id) {
		Item item = new Item();
		try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from "+TABLE+" where id=?");
            // Parameters start with 1
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
            	item.setId(id);
            	item.setName(rs.getString("name"));
            	item.setCategory(Category.valueOf(rs.getString("category")));
            	item.setWishList(rs.getBoolean("wish_list"));
            } 

        } catch (SQLException e) {
            e.printStackTrace();
        }
		return item;
	}

	public void deleteItem(int id) {
		Item item = new Item();
		try {
			String query = "DELETE FROM items WHERE id=" + id;
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
}
