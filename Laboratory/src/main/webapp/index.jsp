<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="static/css/main.css" />
	</head>

	<body class="bodypg">
		<div class="top-intr">
			<div class="container">
				<p class="pull-left">
					巢湖学院实验室
				</p>
				<p class="pull-right">
					<!-- <a><i class="glyphicon glyphicon-earphone"></i>联系电话：0123-45678910 </a> -->
			<span>欢迎您:${name }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="login.jsp">登录</a><a href="${pageContext.request.contextPath}/logOut">退出</a>|<a href="login.jsp">管理员</a>
				
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
					<a href="index.jsp">
						<h2>移动互联协同创新中心</h2>
						
					</a>
				</div>
				<!-- <div class="pull-left search">
					<input type="text" placeholder="输入搜索的内容"/>
						<a><i class="glyphicon glyphicon-search"></i>搜索</a>
					</div> -->
				<div class="nav-list"><!--class="collapse navbar-collapse" id="bs-example-navbar-collapse"-->
					<ul class="nav navbar-nav">
						<li class="active hidden-xs">
							<a href="index.jsp">实验室概述</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/getAllNews">科创新闻</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/products">项目展示</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/getFiles2">下载交流</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/contact">联系我们</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/getMsg">留言评价</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="fl hidden-lg hidden-md hidden-sm">
			<ul>
				<li>
					<a href="index.jsp">
						<p><i class="glyphicon glyphicon-home"></i>
						网站首页</p>
					</a>
				</li>
				<li>
					<a href="tel:18112651385" >
						<p><i class="glyphicon glyphicon-earphone"></i>
						拨号联系</p>
					</a>
				</li>
				<li>
					<a href="contact.jsp#message">
						<p><i class="glyphicon glyphicon-comment"></i>
						在线留言</p>
					</a>
				</li>
			</ul>
		</div>
		<!--banner-->
		<div id="carousel-example-generic" class="carousel slide " data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="static/images/banner/banner2.jpg">
				</div>
				<div class="item">
					<img src="static/images/banner/banner3.jpg">
				</div>
				<div class="item">
					<img src="static/images/banner/banner1.jpg">
				</div>
				<div class="item">
					<img src="img/01.jpg">
				</div>
				<div class="item">
					<img src="img/02.jpg">
				</div>
				<div class="item">
					<img src="img/04.jpg">
				</div>
				<div class="item">
					<img src="img/05.jpg">
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!--main-->
		<div class="main container">
			<div class="row">
				<div class="col-sm-3 col-xs-12">
					<div class="pro-list">
						<div class="list-head">
							<h2>师资力量</h2>
							
						</div>
						<dl>
							<dt>教育人员</dt>
							<dd><a href="${pageContext.request.contextPath}/route/products-detail8">巢湖学院师资力量</a></dd>
							<dt>规章制度</dt>
							<dd><a href="${pageContext.request.contextPath}/route/products-detail9">规章制度</a></dd>
							<dt>队伍管理</dt>
							<dd><a href="${pageContext.request.contextPath}/route/products-detail10">队伍管理</a></dd>
							<dt>学术动态</dt>
							<dd><a href="${pageContext.request.contextPath}/route/products-detail11">学术动态</a></dd>
							
							<!-- <dt>其他醚</dt>
							<dd><a href="products-detail5.jsp">二乙二醇己醚</a></dd>
							<dd><a href="products-detail6.jsp">二丙二醇丙醚</a></dd>
							<dd><a href="products-detail7.jsp">三丙二醇甲醚</a></dd> -->
						</dl>
					</div>
					
				</div>
				<div class="col-sm-9 col-xs-12">
					<div class="about-list row">
						<div class="col-md-9 col-sm-12">
							<div class="about">
								<div class="list-head">
									<h2>巢湖学院移动互联协同创新中心</h2>
									<!-- <a href="about.jsp">更多+</a> -->
								</div>
								<div class=" about-con row">
									<div class="col-sm-6 col-xs-12">
										<img src="img/0000.jpg"/>
										<img src="img/000.jpg"/>
										<!-- <img src="img/0.jpg"/> -->
									</div>
									<div class="col-sm-6 col-xs-12">
										<h3>安徽巢湖学院移动互联协同创新中心</h3>
										<p>
											本中心是在网络工程实验教学省级示范中心基础上创建。中心坚持“学生为本、注重能力、 彰显个性、鼓励创新”的实验教学理念，逐步形成了中心建设与科研、实验教学与技能培训结合、 夯实基础与个性发展并举的教学特色，成为我校培养既有一定理论知识、又有较强创新精神和创 新能力的大学生实践基地。中心不仅整合了网络通信与信息安全二大实验教学的虚拟仿真实验课程， 还整合了学院科研实验室中与虚拟仿真实验相关的资源。 列入中心的虚拟仿真实验课程有无线网络技术、网络安全、路由交换技术、网络协议分析、通信原理、 数字信号处理以及网络编程等7门课程，相关的实验教师和管理人员共20名；相关仪器备（含软件）40套 ，占地面积130多平方米。
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-12">
							<div class="con-list">
								<div class="list-head">
									<h2>联系我们</h2>
								</div>
								<div class="con-det">
									<a href="contact.jsp"><img src="static/images/listcon.jpg"/></a>
									<ul>
										<li>地址： 安徽省合肥巢湖经济开发区</li>
										<li>固定电话：<br />0512-57995109</li>
										<li>联系邮箱：Cindy@kindjob.com</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="pro-show">
						<div class="list-head">
							<h2>实验室展示</h2>
							
						</div>
						<ul class="row">
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail">
									<img src="static/images/2.jpg"/>
									<p>
</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail1">
									<img src="img/000.jpg"/>
									<p></p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail2">
									<img src="img/00.jpg" height="130px;"/>
									<p></p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail3">
									<img src="static/images/5.png"/>
									<p></p>
								</a>
							</li>
							<%-- <li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail4">
									<img src="static/images/6.png"/>
									<p>机电实验室</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail5">
									<img src="static/images/7.png"/>
									<p>化学实验室</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail6">
									<img src="static/images/8.png"/>
									<p>微生物实验室</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail7">
									<img src="static/images/9.png"/>
									<p>未来科技</p>
								</a>
							</li> --%>
						</ul>
					</div>
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
						<!-- <li>
							<a href="about.jsp">关于我们</a>
						</li>
						<li>
							<a href="products.jsp">产品介绍</a>
						</li>
						<li>
							<a href="news.jsp">新闻中心</a>
						</li>
						<li>
							<a href="contact.jsp">联系我们</a>
						</li> -->
					</ul>
					<div class="gw col-sm-4 col-xs-12">
						<p>关注我们：</p>
						<img src="static/images/wx.jpg"/>
						<p>客服热线：0512-57995109</p>
					</div>
				</div>
				<div class="copyright text-center">
					<span>copyright © 2017 </span>
					<span>巢湖学院实验室 </span>
					<span>京ICP证030173号 </span>
				</div>
			</div>
		</footer>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>