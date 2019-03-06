<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/main.css" />
	</head>

	<body>
		<div class="top-intr">
			<div class="container">
				<p class="pull-left">
					巢湖学院实验室
				</p>
				<p class="pull-right">
				<span>欢迎您:${name }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="../login.jsp">登录</a><a href="${pageContext.request.contextPath}/logOut">退出</a>
				
				</p>
			</div>
		</div>
		<nav class="navbar-default">
			<div class="container">
				<div class="navbar-header">
					<!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>-->
					<a href="../index.jsp">
						<h2>移动互联协同创新中心</h2>
					</a>
				</div>
				<!-- <div class="pull-left search">
					<input type="text" placeholder="输入搜索的内容"/>
						<a><i class="glyphicon glyphicon-search"></i>搜索</a>
					</div> -->
				<div class="nav-list"><!--class="collapse navbar-collapse" id="bs-example-navbar-collapse"-->
					<ul class="nav navbar-nav">
						<li>
							<a href="../index.jsp">实验室概述</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/getAllNews">科创新闻</a>
						</li>
						<li class="active hidden-xs">
							<a href="${pageContext.request.contextPath}/route/products">项目展示</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/getFiles2">下载交流</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/contact">联系我们</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/msg">留言评价</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="fl hidden-lg hidden-md hidden-sm">
			<ul>
				<li>
					<a href="../index.jsp">
						<p><i class="glyphicon glyphicon-home"></i>
						网站首页</p>
					</a>
				</li>
				<li>
					<a href="tel:0512-57995109" >
						<p><i class="glyphicon glyphicon-earphone"></i>
						拨号联系</p>
					</a>
				</li>
				<li>
					<a href="contact.html#message">
						<p><i class="glyphicon glyphicon-comment"></i>
						在线留言</p>
					</a>
				</li>
			</ul>
		</div>
		
		<!--main-->

		<div class="abpg container">
			<div class="">
				<!--<div class="col-md-3">
					<div class="model-title theme">
						产品介绍
					</div>
					<div class="model-list">
						<ul class="list-group">
							<li class="list-group-item ">
								<a href="about.html">产品介绍</a>
							</li>
						</ul>
					</div>
				</div>-->
				<div class="serli ">
					<ol class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i>
							<a href="../index.jsp">主页</a>
						</li>
						<li class="active">科技展示</li>
					</ol>
					
					<div class="pro-det clearfix">
						<ul>
							<li class="col-sm-3 col-xs-6">
								<div>
								<a href="${pageContext.request.contextPath}/route/products-detail20">
									<img src="../static/images/56.png"/>
										<p>Web前端项目</p>
										</a>
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
									<a href="${pageContext.request.contextPath}/route/products-detail21">
										<img src="../static/images/33.png"/>
										<p>Andriod项目</p>
			</a>						
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
									<a href="${pageContext.request.contextPath}/route/products-detail22">
										<img src="../static/images/34.png"/>
										<p>IOS项目</p>
									</a>
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
							<div>
							<a href="${pageContext.request.contextPath}/route/products-detail23">
								<img src="../static/images/55.png"/>
										<p>科技</p>
										</a>
										</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
								<a href="${pageContext.request.contextPath}/route/products-detail24">
									<img src="../static/images/36.png"/>
									<p>科技</p>
									</a>
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
								<a href="${pageContext.request.contextPath}/route/products-detail25">
									<img src="../static/images/47.png"/>
									<p>科技</p>
									</a>
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
								<a href="${pageContext.request.contextPath}/route/products-detail26">
									<img src="../static/images/48.png"/>
									<p>科技</p>
									</a>
								</div>
							</li>
							<li class="col-sm-3 col-xs-6">
								<div>
									<div>
									<a href="${pageContext.request.contextPath}/route/products-detail27">
									<img src="../static/images/58.png"/>
									<p>科技</p>
									</a>
								</div>
								</div>
							</li>
						</ul>
					</div>
					<nav aria-label="Page navigation" class=" text-center">
						<ul class="pagination ">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">«</span>
								</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">»</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<a class="move-top">
			<p><i class="glyphicon glyphicon-chevron-up"></i></p>
		</a>
		<footer>
			<div class="footer02">
				<div class="container">
					<div class="col-sm-4 col-xs-12 footer-address">
						<h4>巢湖学院实验室</h4>
						<ul>
							<li><i class="glyphicon glyphicon-home"></i>地址： 安徽省合肥巢湖经济开发区</li>
							<li><i class="glyphicon glyphicon-phone-alt"></i>固定电话：0512-57995109 </li>
							<li><i class="glyphicon glyphicon-phone"></i>移动电话：13888888888</li>
							<li><i class="glyphicon glyphicon-envelope"></i>联系邮箱：Cindy@kindjob.com</li>
					</ul>
					</div>
					<ul class="footerlink col-sm-4 hidden-xs">
						
					</ul>
					<div class="gw col-sm-4 col-xs-12">
						<p>关注我们：</p>
						<img src="../static/images/wx.jpg"/>
						<p>客服热线：0512-57995109</p>
					</div>
				</div>
				<div class="copyright text-center">
					<span>copyright © 2017 </span>
					<span>巢湖学院实验室 </span>
					<span>苏ICP备5673652号 </span>
				</div>
			</div>
		</footer>
		<script src="../static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>