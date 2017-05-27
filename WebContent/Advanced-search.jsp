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
				<li><a href="http://localhost:8080/LibraryManageSystem/ui.jsp">Basic Info</a></li>
				<li><a href="http://localhost:8080/LibraryManageSystem/bookInfo.jsp">Books</a></li>
				<li class="am-active"><a>Advanced</a></li>
			</ul>
			<br>
			<div class="am-tabs am-margin " data-am-tabs="">
					<ul class="am-tabs-nav am-nav am-nav-tabs">
					</ul>

					<div class="am-tabs-bd ">
						<div class="am-tab-panel am-fade am-in am-active" id="tab1">

							<div class="am-g ">
								<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>

								<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
									<form action="SearchServlet" method="post" class="am-form am-form-horizontal">
										
										<div class="am-form-group">
											<label for="user-name" class="am-u-sm-3 am-form-label">Book
												ID </label>
											<div class="am-u-sm-9">
												<input type="text" name="book_id" placeholder="Book ID "> <small>The unique
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
												<input type="text" name="publisher" placeholder="Enter Publisher">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-weibo" class="am-u-sm-3 am-form-label">Publish Year
											</label>
											<div class="am-u-sm-9">
												<input type="text" name="publish_year" placeholder="Publish Year">
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
												<input type="text" name="call_number" placeholder="Call Number">
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
												<input type="submit" class="am-btn am-btn-primary" value="Search">
											</div>
										</div>
									</form>
								</div>
							</div>



						</div>
					</div>
				</div>
		<br>
			</div>

			<footer class="admin-content-footer">
				<hr>
			</footer>
		</div>
		<!-- content end -->


	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
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