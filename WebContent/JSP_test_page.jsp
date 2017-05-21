<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unit Test</title>
</head>
<jsp:useBean id="person" scope="session" class="personalInfo.person" />
<body>
	<%
		if (person.getUserName() == null) {
			person.get("001");
		}
	%>
	<%=person.getUserName()%>
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