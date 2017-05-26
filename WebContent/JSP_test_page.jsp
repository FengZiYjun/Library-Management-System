<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unit Test</title>
</head>

<body>
	<table
		class="am-table am-table-bordered am-table-striped am-table-compact am-text-nowrap">
		<thead>
			<tr>
				<th>Book ID</th>
				<th>Title</th>
				<th>BorrowTime</th>
				<th>Author</th>
				<th>Tag</th>
				<th>Publisher</th>
				<th>PublishYear</th>
				<th>ISBN</th>
				<th>call_number</th>
			</tr>
		</thead>
		<jsp:useBean id="loan" scope="session" class="loan.LoanBean" />
		<tbody>
			<tr>
				<td></td>
				<td>
					<form action="LoginServlet" method="post" class="am-form">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<input type="submit" value="modify"
									class="am-btn am-btn-default am-btn-xs am-text-secondary">
								<span class="am-icon-pencil-square-o"></span>
							</div>
						</div>
					</form>

					<button
						class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
						<span class="am-icon-trash-o"></span> remove
					</button>

				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>