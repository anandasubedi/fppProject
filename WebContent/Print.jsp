<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container text-center">
		<table class="table table-striped">
			<tr>
				<th class="text-center" colspan="4">MY SHOOPING LIST</th>
			</tr>
			<tr>
			<th class="text-center">Print Check</th>
				<th class="text-center">S.No</th>
				<th class="text-center">Priority</th>
				<th class="text-center">Item Name</th>
				<th class="text-center">Category</th>
				
			</tr>
			<tr align="center">
			<td><input type="checkbox" name="checkBox" value="checked"
					style="margin-left: auto; margin-right: auto;"></td>
			
				<td>1</td>
				<td>high</td>
				<td>cocola</td>
				<td>drinks</td>
							</tr>
			<tr align="center">
			<td><input type="checkbox" name="checkBox" value="checked"
					style="margin-left: auto; margin-right: auto;"></td>
				<td>2</td>
				<td>low</td>
				<td>rice</td>
				<td>food</td>
				
			</tr>
			<tr align="center">
			<td><input type="checkbox" name="checkBox" value="checked"
					style="margin-left: auto; margin-right: auto;"></td>
				<td>3</td>
				<td>Normal</td>
				<td>tomato</td>
				<td>Vegetable</td>
				
			</tr>
			<tr>
				<td colspan="5"><button type="button" class="btn btn-default">Print</button>
					<button type="button" class="btn btn-default">Cancel</button></td>
				</td>
		</table>

	</div>
</body>
</html>