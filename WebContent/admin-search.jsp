<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>LIBERTAS</title>
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
					<li><a href="administrator.jsp"><span class="am-icon-home"></span>
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
						<strong class="am-text-primary am-text-lg">Search</strong> / <small>from the library</small>
					</div>
				</div>

				<hr>

				<div class="am-tabs am-margin" data-am-tabs="">
					<ul class="am-tabs-nav am-nav am-nav-tabs">
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">

							<div class="am-g">
								<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>

								<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
									<form action="SearchServlet" method="post"
										class="am-form am-form-horizontal am-smooth-scroll">
										
										<div class="am-form-group">
											<label for="user-name" class="am-u-sm-3 am-form-label">Book
												ID </label>
											<div class="am-u-sm-9">
												<input type="text" name="book_id"
													placeholder="Book ID "> <small>The unique
													book identity number.</small>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-email" class="am-u-sm-3 am-form-label">Title
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="title" placeholder="Title">
												<small></small>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-u-sm-3 am-form-label">Author
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="author" placeholder="Author">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-QQ" class="am-u-sm-3 am-form-label">Publisher
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="publisher"
													placeholder="Enter Publisher">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-weibo" class="am-u-sm-3 am-form-label">Publish Year
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="publish_year"
													placeholder="Publish Year">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-weibo" class="am-u-sm-3 am-form-label">ISBN
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="ISBN" placeholder="ISBN">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-weibo" class="am-u-sm-3 am-form-label">Call Num </label>
											<div class="am-u-sm-9">
												<input type="text" name="call_number"
													placeholder="Call Number">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-weibo" class="am-u-sm-3 am-form-label">Tag
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="tag" placeholder="Tag">
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<input type="submit" class="am-btn am-btn-primary"
													value="Search">
											</div>
										</div>
									</form>
								</div>
							</div>



						</div>
					</div>
				</div>

			</div>
		</div>

		<footer class="admin-content-footer">
			<hr>
			<p class="am-padding-left">@ 2014 AllMobilize, Inc. Licensed
				under MIT license.</p>
		</footer>

	</div>
	<!-- content end -->



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