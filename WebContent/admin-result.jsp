<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin help Examples</title>
<meta name="description" content="è¿™æ˜¯ä¸€ä¸ª help é¡µé¢">
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
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="admin-index.html"><span class="am-icon-home"></span>
							Front Page</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> Operations <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="admin-add.jsp" class="am-cf"><span
									class="am-icon-plus"></span> Add</a></li>
							<li><a href="admin-search.jsp"><span
									class="am-icon-remove"></span> Delete</a></li>
							<li><a href="admin-search.jsp"><span
									class="am-icon-search"></span> Search </a></li>
							<li><a href="admin-search.jsp"><span
									class="am-icon-pencil"></span> Modify </a></li>
						</ul></li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-tag"></span> wiki
						</p>
						<p>Welcome to the administration page!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">Result</strong> / <small>Table</small>
					</div>
				</div>

				<hr>

				<div class="am-g">
					<div class="am-u-sm-12">
						<form class="am-form">
							<table
								class="am-table am-table-striped am-table-hover table-main">
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

									<tr>
										

										<%
											String[][] book_info = (String[][]) request.getAttribute("book_info");
											
											String[] info_name = { "book_id", "publisher", "author", "title", "ISBN", "call_number", "tag",
													"publish_year" };
											int row_num = book_info.length;
											for (int i = 0; i < row_num; i++) { %>
											
											<td><input type="checkbox"></td>
											
											<%
												for (int j = 0; j < info_name.length; j++) {
													out.print("<td>" + book_info[i][j] + "</td>");
												}
										%>

										<td>
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs">
													<button
														class="am-btn am-btn-default am-btn-xs am-text-secondary">
														<span class="am-icon-pencil-square-o"></span> modify
													</button>
													<button
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
														<span class="am-icon-trash-o"></span> remove
													</button>
												</div>
											</div>
										</td>


									</tr>
									<%
										}
									%>

								</tbody>
							</table>

							<hr>

						</form>
					</div>

				</div>
			</div>

			<footer class="admin-content-footer">
				<hr>
				<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed
					under MIT license.</p>
			</footer>

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

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>