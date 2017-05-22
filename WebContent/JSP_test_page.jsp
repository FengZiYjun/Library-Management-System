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
				<th>Publisher</th>
				<th>PublishYear</th>
				<th>Tag</th>
			</tr>
		</thead>
		<tbody>
			<%
				int i = 0;
			%>
			<%
				for (; i < 10; i++) {
			%>
			<%
				out.println(
							"<tr><td>10001</td><td>MY BOOK</td><td>2017/5/22</td>"+
							"<td>John Bean</td><td>Sun</td><td>2014</td><td>History</td></tr>");
				}
			%>
			

			

		</tbody>
	</table>



	<%-- 
			    abc.connectDB();
			    //ResultSet rs = abc.query("SELECT * FROM classroom;");
			    ResultSet rs = abc.query("SELECT user_name FROM user WHERE user_id='001';");
			    if(rs==null){
			    	out.print("shit");
			    }else{
			    	while(rs.next()){%>
			    		<% String id  = rs.getString("user_name"); %>
			    		<% out.print("user_name: " + id); %>
			   <%}
			    }%>
			    <%abc.close(); %>
			    --%>
</body>
</html>