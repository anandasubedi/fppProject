<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
			  <div class="col-xs-3 col-sm-12 col-md-1"><h4><a href="" style="color: white;"  data-toggle="modal" data-target="#add_new"><span class="glyphicon glyphicon-plus aria-hidden="true"></span></a></h4></div>
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
	            <tr>
	            	<td>
	            		<span class="glyphicon glyphicon-ok aria-hidden="true"></span>
	            		<span style="visibility: hidden;">B</span>
	            	</td>
	                <td>Beef</td>
	                <td>Meat</td>
	                <td>High</td>
	                <td><a href="">Edit</a></td>
	                <td><a href=""><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
	               	
	                
	            </tr>
	            <tr>
	            	<td>
	            		<span class="glyphicon glyphicon-minus aria-hidden="true"></span>
	            		<span style="visibility: hidden;">N</span>
	            	</td>
	                <td>Salad</td>
	                <td>Vegetable</td>
	                <td>Normal</td>
	                <td><a href="">Edit</a></td>
	                <td><a href=""><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
	          
	            </tr>
	            <tr>
	            	<td>
	            		<span class="glyphicon glyphicon-ok aria-hidden="true"></span>
	            		<span style="visibility: hidden;">B</span>
	            	</td>
	                <td>Chicken</td>
	                <td>Meat</td>
	                <td>Low</td>
	                <td><a href="">Edit</a></td>
	                <td><a href=""><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
	            </tr>
	            <tr>
	            	<td>
	            		<span class="glyphicon glyphicon-minus aria-hidden="true"></span>
	            		<span style="visibility: hidden;">N</span>
	            	</td>
	                <td>Salad</td>
	                <td>Vegetable</td>
	                <td>High</td>
	                <td><a href="">Edit</a></td>
	                <td><a href=""><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
	            </tr>
			</tbody>
		</table>
			<div id="button_print" style="text-align: right;margin-top: 20px;">
				<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print All Items</button>
				<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print Items To Buy</button>
			</div>
			
	  	</div>
	  	<div class="panel-footer" style="text-align: center;">Created by SAKA Team. July 2015</div>
	</div>

	<!-- Modal Add New -->
	<div id="add_new" class="modal fade">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">Add New Item</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal">
			  <div class="form-group">
			    <label for="inputName" class="col-sm-4 control-label">Item Name</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" id="inputName" placeholder="e.g, Salad">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="selectCategory" class="col-sm-4 control-label">Item Category</label>
			    <div class="col-sm-8">
			      <select id="selectCategory" class="selectpicker">
				    <option>Drink</option>
				    <option>Ingredients</option>
				    <option>Meat</option>
				    <option>Snacks</option>
				    <option>Vegetable</option>
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
			          <input type="checkbox"> To Buy
			        </label>
			      </div>
			    </div>
			  </div>
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
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