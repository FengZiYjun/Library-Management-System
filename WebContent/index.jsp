<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Login Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<style>
.header {
	text-align: center;
}

.header h1 {
	font-size: 200%;
	color: #333;
	margin-top: 30px;
}

.header p {
	font-size: 14px;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<title>Index</title>
</head>
<body>
	<div class="header">
		<div class="am-g">
			<h1>Web ide</h1>
			<p>
				Integrated Development Environment<br />A Unique Library Management
				System
			</p>
		</div>
		<hr />
	</div>
	<div class="am-g">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<h3>Login</h3>
			<hr>
			<div class="am-btn-group">
				<a href="#" class="am-btn am-btn-secondary am-btn-sm"><i
					class="am-icon-github am-icon-sm"></i> Github</a> <a href="#"
					class="am-btn am-btn-success am-btn-sm"><i
					class="am-icon-google-plus-square am-icon-sm"></i> Google+</a> <a
					href="#" class="am-btn am-btn-primary am-btn-sm"><i
					class="am-icon-stack-overflow am-icon-sm"></i> stackOverflow</a>
			</div>
			<br> <br>
			<form action="LoginServlet" method="post" class="am-form">
				<label for="text">Your user ID:</label> <input type="text" name="username">
				<br/>
				<label for="password">Password:</label> <input type="text"
					name="password" /> 
				<br/>
				<input type="submit" value="submit" />
			</form>
		</div>
	</div>
</body>
</html>