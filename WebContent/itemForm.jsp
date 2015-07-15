<%@page import="com.shoppinglist.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.3/css/bootstrap-select.css">
<script src="https://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.3/js/bootstrap-select.js"></script>
<title></title>
</head>
<body>
	<div class="panel panel-primary" style="margin: 20px 200px 200px 200px;">
		<div id="functionName" class="panel-heading" style="text-align: center;"></div>
	  	<div class="panel-body">
			<form class="form-horizontal" method="post" action="addItem">
			  <div class="form-group">
			    <label for="inputName" class="col-sm-4 control-label">Item Name</label>
			    <div class="col-sm-6">
			      <input type="text" name="name" class="form-control" value="${item.getName()}" id="inputName" placeholder="e.g, Salad">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="selectCategory" class="col-sm-4 control-label">Item Category</label>
			    <div class="col-sm-8">
			      <select id="selectCategory" class="selectpicker" name="category">
			      	<c:forEach items="${categories}" var="category">
			      		<option value="${category.toString()}" ${category.toString() == item.getCategory().toString() ? "selected" : ""}>${category.toString()}</option>
    				</c:forEach>
				  </select>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPriority" class="col-sm-4 control-label">Priority</label>
			    <div class="col-sm-8">
		      		<label class="radio-inline">
					 	<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> High
					</label>
					<label class="radio-inline">
					  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Normal
					</label>
					<label class="radio-inline">
					  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> Low
					</label>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-4 col-sm-8">
			      <div class="checkbox">
			        <label>
			          <input type="checkbox" name="wishList" value="1" ${item.isWishList()?"checked":""}> Add to Wishlist
			        </label>
			      </div>
			    </div>
			  </div>
			  <div class="modal-footer">
			  <input type="hidden" name="itemId" value="${item.getId()}">
		        <a href="" class="btn btn-default" data-dismiss="modal">Close</a>
		        <button type="submit" class="btn btn-primary">Save changes</button>
	      	  </div>
			</form>
	  	</div>
	  	<div class="panel-footer" style="text-align: center;">Created by SAKA Team. July 2015</div>
	</div>
</body>
<script>
	$(document).ready(function () {
	    if(window.location.href.indexOf("addItem") > -1) {
	    	document.getElementById("functionName").innerHTML = "Add New Item";
	    	document.title = "Add New Item - ShoppingList";
	    }
	    else
	    {
	    	document.getElementById("functionName").innerHTML = "Edit Item";
	    	document.title = "Edit Item - ShoppingList";
	    }
	});
</script>
</html>