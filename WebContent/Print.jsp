<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print - ShoppingList</title>
<script src="bootstrap.js" type="text/javascript"></script>
<!-- <script type="text/javascript">
	$(function() {
		$('#print').prop("disabled", true);
		$('#print').addClass("btn-default");

		$("#selectall").on("click", function() {

			if ($("#selectall").is(":checked")) {
				//$().attr('checked', true);
				$(".sn").prop("checked", true);
				$('#print').prop("disabled", false);
				$('#print').addClass("btn-primary");
				$('#print').removeClass("btn-default");
			}

		});

		$(".sn").on("click", function() {
			var len = $("[name='sn[]']:checked").length;

			if ($(".sn").length == $(".sn:checked").length) {
				$("#selectall").attr("checked", "checked");
				$('#print').attr("disabled", false);
			} else {
				$("#selectall").removeAttr("checked");
				$('#print').attr("disabled", false);
				$('#print').addClass("btn-primary");
				$('#print').removeClass("btn-default");
			}

			if (len < 1) {
				$('#print').prop("disabled", true);
				$('#print').addClass("btn-default");
				$('#print').removeClass("btn-primary");
			}

		});
	})
</script> -->
</head>
<body>
	<!--<div class="container-fluid text-center ">
		<div class="row well">
			<div class="col-md-2 weell"></div>

			<div class="col-md-8"> -->
				<div class="panel panel-primary" style="margin: 20px 50px 20px 50px;">
					<div class="panel-heading">
						<h3 class="panel-title" style="text-align: center;">
							<span class="glyphicon glyphicon-shopping-cart"></span> MY
							SHOPPING
						</h3>
					</div>
					<div class="panel-body">
						<table class="table table-striped">

							<tr>
								<!--<th class="text-center"><input type="Checkbox"
									name="select" id="selectall"></th>  -->
								<th >No</th>
								<th >Item Name</th>
								<th >Category</th>
								<th >Priority</th>
							</tr>
							<tr>
								<!-- <td><input type="checkbox" name="sn[]" class="sn"
									value="checked" style="margin-left: auto; margin-right: auto;"></td> -->

								<td>1</td>
								<td>cocola</td>
								<td>drinks</td>
								<td>high</td>
							</tr>
							<tr >
								

								<td>2</td>
								<td>fanta</td>
								<td>drinks</td>
								<td>high</td>
							</tr>
							<tr>
					
								<td>3</td>
								<td>rice</td>
								<td>food</td>
								<td>low</td>

							</tr>
							<tr >
								
								<td>4</td>
								<td>tomato</td>
								<td>Vegetable</td>
								<td>Normal</td>
							</tr>
							<!-- <tr>
								<td colspan="5"><button type="button" class="btn btn-lg"
										id="print">
										<span class="glyphicon glyphicon-print"> </span>Print
									</button>
									<button type="button" class="btn btn-primary btn-lg">
										<span class="glyphicon glyphicon-remove-circle"></span>Cancel
									</button></td>
								</td> -->
						</table>
					</div>
				</div>
			<!-- </div>

			<div class="col-md-2"></div>
		</div>
	</div> -->
</body>
</html>