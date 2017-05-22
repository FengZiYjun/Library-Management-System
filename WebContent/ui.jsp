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

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						Massage <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown=""><a
					class="am-dropdown-toggle" data-am-dropdown-toggle=""
					href="javascript:;"> <span class="am-icon-users"></span> Logout
						<span class="am-icon-caret-down"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul></li>
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">Full Screen</span></a></li>
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
				<li class="am-active"><a href="http://localhost:8080/LibraryManageSystem/ui.jsp">
				Basic Info</a></li>
				<li><a href="http://localhost:8080/LibraryManageSystem/ui_test.jsp">Books</a></li>
				<li><a href="#tab3">Advanced</a></li>
			</ul>

			<div class="am-tabs-bd">
				<div class="am-tab-panel am-fade am-in am-active" id="tab1">
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-left"></div>

						<jsp:useBean id="person" scope="session"
							class="personalInfo.person" />
						<table
							class="am-table am-table-bd am-table-bdrs am-table-striped am-table-hover">

							<tbody>
								<tr>

									<td>User ID</td>
									<td><%
										if (person.getUserID() == null) {
											String id = (String) request.getAttribute("id");
											person.get(id);
										}%> 
										<%=person.getUserID()%></td>
								</tr>
								<tr>

									<td>User Name</td>
									<td><%=person.getUserName()%></td>

								</tr>
								<tr>

									<td>Email</td>
									<td><%=person.getUserEmail()%></td>

								</tr>
								<tr>
									<td>Telephone</td>
									<td>(empty)</td>

								</tr>
							</tbody>
						</table>



						<div class="am-tab-panel am-fade" id="tab3">
							<form class="am-form">
								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 标题</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<input type="text" class="am-input-sm">
									</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 关键字</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<input type="text" class="am-input-sm">
									</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 描述</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<textarea rows="4"></textarea>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>

				<div class="am-margin">
					<button type="button" class="am-btn am-btn-primary am-btn-xs">Change
						Personal Info</button>
				</div>
			</div>

			<footer class="admin-content-footer">
				<hr>
			</footer>
		</div>
		<!-- content end -->

	</div>

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