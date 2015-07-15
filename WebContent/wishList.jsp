<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<div class="panel panel-primary" style="margin: 20px 50px 20px 50px;">
					<div class="panel-heading">
						<h3 class="panel-title" style="text-align: center;">
							<span class="glyphicon glyphicon-shopping-cart"></span> WISH LIST
						</h3>
					</div>
					<div class="panel-body">
						<table class="table table-striped">
							<tr>
								<th >Item Name</th>
								<th >Category</th>
								<th >Priority</th>
							</tr>
						<tbody>
						<c:forEach items="${items}" var="item">
							<tr >
								<td><c:out value="${item.getName()}"/></td>
								<td><c:out value="${item.getCategory().toString()}"/></td>
								<td>high</td>
							</tr>
						</c:forEach>	
						</tbody>	
						</table>
					</div>
				</div>
	</div>
</body>
</html>