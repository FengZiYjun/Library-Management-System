<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin form Examples</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp">
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI">
<link rel="stylesheet" href="assets/css/amazeui.min.css">
<link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>Library</strong> <small>Lux Lebertas</small>
		</div>

		

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						Massage <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown=""><a
					class="am-dropdown-toggle" data-am-dropdown-toggle=""
					href="http://localhost:8080/LibraryManageSystem/LogoutServlet"> <span class="am-icon-users"></span> Logout
				</a>
					</li>
			</ul>
		</div>
	</header>


	<!-- content start -->

	<div class="admin-content-body">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">My Library</strong> / <small>form</small>
			</div>
		</div>

		<hr>

		<div class="am-tabs am-margin" data-am-tabs="">
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li><a href="http://localhost:8080/LibraryManageSystem/ui.jsp">Basic
						Info</a></li>
				<li class="am-active"><a>Books</a></li>
				<li><a
					href="http://localhost:8080/LibraryManageSystem/Advanced.jsp">Advanced</a></li>
			</ul>
			<br> <a class="am-btn am-btn-primary am-active"
				role="button">Loan</a> <a href="http://localhost:8080/LibraryManageSystem/bookInfo2.jsp" class="am-btn am-btn-primary"
				role="button">History</a><br> <br>
			<div class="am-scrollable-horizontal">
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
					<jsp:useBean id="person" scope="session" class="personalInfo.person" />
					<jsp:useBean id="loan" scope="session" class="loan.LoanBean" />
					<tbody>
						<%
							if (loan.isLoaded() == false) {
								loan.setBookInfo(person.getUserID());
							}
							int rows = loan.getRowNum();
							String[][] books = loan.getBookInfo();
							for (int i = 0; i < rows; i++) {
								String[] book = books[i];
						
								out.print("<tr><td>");
								out.print(book[0]);
								for(int j=1;j<9;j++){
									out.print("</td><td>");
									out.print(book[j]);
								}
								out.print("</td></tr>");
							}
						%>
					</tbody>
				</table>
			</div>

		</div>
	</div>



	<footer class="admin-content-footer">
		<hr>
	</footer>

	<!-- content end -->



	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
	</footer>


	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>