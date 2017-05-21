<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>user interface</title>
</head>
<body>
	<br>
	<h3 class="am-article-title blog-title">
		<a href="#">Personal information</a>
	</h3>

	<form class="am-form am-form-horizontal">
		<div class="am-form-group">
			<label for="user-name" class="am-u-sm-3 am-form-label"> User ID:
				<%=request.getAttribute("id") %>
			</label><br>
			<label for="user-name" class="am-u-sm-3 am-form-label"> Name:
				<jsp:useBean id="person" scope="session" class="personalInfo.person" />
				<%
					if (person.getUserName() == null) {
						String id = (String) request.getAttribute("id");
						System.out.println("request:" + id);
						person.get(id);
					}
				%> <%=person.getUserName()%>
			</label><br>
			<label for="user-name" class="am-u-sm-3 am-form-label"> Email:
				 <%=person.getUserEmail()%>
			</label>

		</div>

		<!-- future features -->
		<!--  
		<div class="am-form-group">
			<label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
			<div class="am-u-sm-9">
				<input type="number" pattern="[0-9]*" id="user-QQ" placeholder="QQ">
			</div>
		</div>

		<div class="am-form-group">
			<label for="user-weibo" class="am-u-sm-3 am-form-label">Twitter</label>
			<div class="am-u-sm-9">
				<input type="text" id="user-weibo" placeholder="Twitter">
			</div>
		</div>

		<div class="am-form-group">
			<label for="user-intro" class="am-u-sm-3 am-form-label">Intro</label>
			<div class="am-u-sm-9">
				<textarea class="" rows="5" id="user-intro"
					placeholder="introduction"></textarea>
				<small>hello world</small>
			</div>
		</div>

		<div class="am-form-group">
			<div class="am-u-sm-9 am-u-sm-push-3">
				<button type="button" class="am-btn am-btn-primary">save
					change</button>
			</div>
		</div>
		-->
	</form>

</body>
</html>