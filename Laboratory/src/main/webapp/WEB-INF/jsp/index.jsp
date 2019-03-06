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

	<body class="bodypg">
		<div class="top-intr">
			<div class="container">
				<p class="pull-left">
					巢湖学院实验室
				</p>
				<p class="pull-right">
					<!-- <a><i class="glyphicon glyphicon-earphone"></i>联系电话：0123-45678910 </a> -->
			<span>欢迎您:${name }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">登录</a><a href="#">退出</a>
				
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
						<h1>实验室</h1>
						<p>Laboratory</p>
					</a>
				</div>
				<div class="pull-left search">
					<input type="text" placeholder="输入搜索的内容"/>
						<a><i class="glyphicon glyphicon-search"></i>搜索</a>
					</div>
				<div class="nav-list"><!--class="collapse navbar-collapse" id="bs-example-navbar-collapse"-->
					<ul class="nav navbar-nav">
						<li class="active hidden-xs">
							<a href="index.jsp">实验室概述</a>
						</li>
						<li>
							<a href="news.jsp">科创新闻</a>
						</li>
						<li>
							<a href="products.jsp">项目展示</a>
						</li>
						<li>
							<a href="products.jsp">培训方向</a>
						</li>
						<li>
							<a href="about.jsp">合作交流</a>
						</li>
						
						<li>
							<a href="contact.jsp">联系我们</a>
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
					<img src="../static/images/banner/banner2.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner3.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner1.jpg">
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
							<dt>硬件设备</dt>
							<dd><a href="products-detail1.jsp">基础设施</a></dd>
							<dt>实验室</dt>
							<dd><a href="products-detail2.jsp">环境介绍</a></dd>
							<dt>科技创新</dt>
							<dd><a href="products-detail3.jsp">成果展示</a></dd>
							
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
									<h2>实验室简介</h2>
									<!-- <a href="about.jsp">更多+</a> -->
								</div>
								<div class=" about-con row">
									<div class="col-sm-6 col-xs-12">
										<img src="../static/images/ab.jpg"/>
									</div>
									<div class="col-sm-6 col-xs-12">
										<h3>安徽巢湖学院实验室</h3>
										<p>
											1、人工微结构与介观物理
 
2、      分子动态及稳定态结构
3、      蛋白质工程及植物基因工程
4、      生物膜与膜生物工程
5、      湍流与复杂系统研究
6、      稀土材料化学及应用
7、      区域光纤通信网与新型光通信系统
8、      文字信息处理技术（暂无网站链接）
9、       环境模拟与污染控制（暂无网站链接）
10、    天然药物及仿生药物
11、    微米/纳米加工技术
12、    核物理与核技术
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
									<a href="contact.jsp"><img src="../static/images/listcon.jpg"/></a>
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
							<h2>产品展示</h2>
							
						</div>
						<ul class="row">
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail">
									<img src="../static/images/products/pro1.jpg"/>
									<p>6501</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail1">
									<img src="../static/images/products/pro2.jpg"/>
									<p>一水柠檬酸/无水柠檬酸</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail2">
									<img src="../static/images/products/pro3.jpg"/>
									<p>苯甲酸钠</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail3">
									<img src="../static/images/products/pro4.jpg"/>
									<p>96%/98%磷酸三钠</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail4">
									<img src="../static/images/products/pro5.jpg"/>
									<p>三聚磷酸钠</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail5">
									<img src="../static/images/products/pro6.jpg"/>
									<p>二乙二醇己醚</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail6">
									<img src="../static/images/products/pro7.jpg"/>
									<p>二丙二醇丙醚</p>
								</a>
							</li>
							<li class="col-sm-3 col-xs-6">
								<a href="${pageContext.request.contextPath}/route/products-detail7">
									<img src="../static/images/products/pro8.jpg"/>
									<p>三丙二醇甲醚</p>
								</a>
							</li>
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
						<img src="../static/images/wx.jpg"/>
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
		<script src="../static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>