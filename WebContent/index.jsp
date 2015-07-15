<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.3/css/bootstrap-select.css">


<script src="https://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.3/js/bootstrap-select.js"></script>
<title>Shopping List - SAKA</title>
</head>
<body>
	<div class="panel panel-primary" style="margin: 20px 20px 20px 20px;">
		<div class="panel-heading" style="text-align: center;">	
			
			<div class="row">
			  <div class="col-xs-9 col-sm-10 col-md-11"><h4><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Shopping List</h4></div>
			  <div class="col-xs-3 col-sm-12 col-md-1">
			  	<h5>
			  		<a href="addItem">
			  		<button type="button" class="btn btn-danger">
			  		Add <span class="glyphicon glyphicon-plus aria-hidden="true"></span>
			  		</button></a>
			  	</h5>
			 </div>
			</div>
			
		</div>
	  	<div class="panel-body">
		   <table id="all_list" class="display" cellspacing="0" width="100%">
	        <thead>
	            <tr>
	                <th>ToBuy</th>
	                <th>Item Name</th>
	                <th>Category</th>
	                <th>Priority</th>
	                <th>Edit</th>
	                <th>Delete</th>
	            </tr>
	        </thead>
	        <tbody>
	        <c:forEach items="${items}" var="item">
	            <tr>
	            	<td>
	            		<c:choose>
    					<c:when test="${item.isWishList()==true}">
        					<span class="glyphicon glyphicon-${item.isWishList()==true?"ok":"minus"} aria-hidden="false"></span>
    						<span >WishList</span>
    					</c:when>    
    					<c:otherwise>
        					<button class="btn btn-notify">+ Add To WishList</button>
        				<br />
    					</c:otherwise>
						</c:choose>
	            		
	            		
	            		
	            	</td>
	                <td><c:out value="${item.getName()}"/></td>
	                <td><c:out value="${item.getCategory().toString()}"/></td>
	                <td>High</td>
	                <td><a class href="<c:out value="editItem?itemId=${item.getId()}"/>">Edit</a></td>
	                <td><a href="<c:out value="?action=delete&itemId=${item.getId()}"/>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
	                          
	            </tr>
	            </c:forEach>
			</tbody>
		</table>
			<div id="button_print" style="text-align: right;margin-top: 20px;">
				<a href="http://localhost:8080/SAKA_ShoppingList/Print.jsp" target="blank" type="button" class="btn btn-default"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print All Items</a>
				<a href="http://localhost:8080/SAKA_ShoppingList/Print.jsp" target="blank" type="button" class="btn btn-success"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print Items To Buy</a>
			</div>
			
	  	</div>
	  	<div class="panel-footer" style="text-align: center;">Created by SAKA Team. July 2015</div>
	</div>
	
	<script>
		$(document).ready(function() {
		    $('#all_list').DataTable
		    (
		    	{
		    		"aoColumnDefs": [
		    		                 { 'bSortable': false, 'aTargets': [4,5]  }
		    		              ]
		    	}
	    		
		    );
		    
		} );
	</script>
</body>
</html>