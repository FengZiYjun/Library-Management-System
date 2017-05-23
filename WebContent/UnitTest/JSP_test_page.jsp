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
			<%
				if(loan.isLoaded==false){
					loan.setBookInfo();
				}
				int rows = loan.getRowNum();
				String[][] books = loan.getBookInfo();
				for (int i=0; i < rows; i++) {
				String[] book = books[i];
			%>
			<%
				out.print("<tr><td>");
				out.print(book[0]);
				out.print("</td><td>");
				out.print(book[1]);
				out.print("</td><td>");
				out.print(book[2]);
				out.print("</td><td>");
				out.print(book[3]);
				out.print("</td><td>");
				out.print(book[4]);
				out.print("</td><td>");
				out.print(book[5]);
				out.print("</td><td>");
				out.print(book[6]);
				out.print("</td><td>");
				out.print(book[7]);
				out.print("</td><td>");
				out.print(book[8]);
				out.print("</td></tr>");
			}%>
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