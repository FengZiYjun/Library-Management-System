<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin help Examples</title>
<meta name="description" content="">
<meta name="keywords" content="help">
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


	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>Library</strong> <small>Administration</small>
		</div>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-dropdown" data-am-dropdown=""><a
					class="am-dropdown-toggle" data-am-dropdown-toggle=""
					href="http://localhost:8080/LibraryManageSystem/index.jsp"> <span
						class="am-icon-users"></span> Logout <span
						class="am-icon-caret-down"></span>
				</a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->

		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">Result</strong> / <small>Table</small>
					</div>
				</div>

				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li><a href="http://localhost:8080/LibraryManageSystem/ui.jsp">Basic
							Info</a></li>
					<li><a
						href="http://localhost:8080/LibraryManageSystem/bookInfo.jsp">Books</a></li>
					<li class="am-active"><a>Advanced</a></li>
				</ul>
				<br>

				<hr>

				<div class="am-g">
					<div class="am-u-sm-12">

						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<th class="table-id">ID</th>
									<th class="table-title">Title</th>
									<th class="table-type">Author</th>
									<th class="table-author am-hide-sm-only">Publisher</th>
									<th class="table-date am-hide-sm-only">PublishYear</th>
									<th class="table-set">Tag</th>
									<th class="table-id">ISBN</th>
									<th class="table-id">call_number</th>

								</tr>
							</thead>
							<tbody>

								<%
									String[][] book_info = (String[][]) request.getAttribute("book_info");

									String[] info_name = { "book_id", "publisher", "author", "title", "ISBN", "call_number", "tag",
											"publish_year" };
									int row_num = book_info.length;

									for (int i = 0; i < row_num; i++) {
								%>
								<tr>
									<td><input type="checkbox"></td>

									<%
										for (int j = 0; j < info_name.length; j++) {
												out.print("<td>" + book_info[i][j] + "</td>");
											}
									%>
								</tr>
								<%
									}
								%>

							</tbody>
						</table>

						<hr>

					</div>

				</div>
			</div>
		</div>
		<!-- content end -->

	</div>

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
		<p class="am-padding-left">@ 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
	</footer>
	
	<script src="assets/js/jquery.min.js"></script>

	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>