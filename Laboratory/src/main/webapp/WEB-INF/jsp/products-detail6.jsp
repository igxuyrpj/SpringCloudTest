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
					<a><i class="glyphicon glyphicon-earphone"></i>联系电话：0512-57995109</a>
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
						<li>
							<a href="../index.jsp">实验室概述</a>
						</li>
						<li class="active hidden-xs">
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
					</ul>
				</div>
			</div>
		</nav>
		<div class="fl hidden-lg hidden-md hidden-sm">
			<ul>
				<li>
					<a href="index.html">
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
		<!--banner-->
		<div id="carousel-example-generic" class="carousel slide " data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			
		</div>
		<!--main-->

		<div class="abpg container">
			<div class="">
				<div class="col-md-12 serli">
					<ol class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i>
							<a href="../index.jsp">主页</a>
						</li>
						<li class="active">微生物实验室</li>
					</ol>
					
				
					<div class="pro-detail row">
						<div class="col-sm-4 col-xs-12 ">
							<img src="../static/images/8.png" />
							<table class="price">
								
							</table>
						</div>
						<div class="col-sm-8 col-xs-12">
							<div class="pack">
								<ul>
									<li><a>详细信息</a></li>
								</ul>
							</div>
							<table>
								<tr>
									<td class="de-feature">微生物实验室是指进行微生物研究的场所。根据微生物实验室的安全要求和使用要求，要不同于一般的实验室工程或净化工程。主要应用于微生物学、生物医学、生物化学、动物实验、基因重组以及生物制品等研究使用的实验室统称生物安全实验室。
生物安全实验室由主功能实验室与其他实验室及辅助功能用房组成。生物安全实验室必须保证人身安全、环境安全、废弃物安全和样本安全，能长期而安全地运行，同时还为需要实验室工作人员提供一个舒适、而良好的工作环境。<br>

分类
一般生物安全防护实验室(不使用实验脊椎动物和昆虫)。
实验脊椎动物生物安全防护实验室。
分级
每类生物安全防护实验室根据所处理的微生物及其毒素的危害程度各分为四级。各级实验室的生物安全防护要求依次为：一级最低，四级最高。
适用范围
一般生物安全防护实验室
一级生物安全防护实验室
实验室结构和设施、安全操作规程、安全设备适用于对健康成年人已知无致病作用的微生物，如用于教学的普通微生物实验室等。
二级生物安全防护实验室
实验室结构和设施、安全操作规程、安全设备适用于对人或环境具有中等潜在危害的微生物。
三级生物安全防护实验室
实验室结构和设施、安全操作规程、安全设备适用于主要通过呼吸途径使人传染上严重的甚至是致死疾病的致病微生物及其毒素，通常已有预防传染的疫苗。
艾滋病病毒的研究(血清学实验除外)应在三级生物安全防护实验室中进行。 5.3.1.4 四级生物安全防护实验室
实验室结构和设施、安全操作规程、安全设备适用于对人体具有高度的危险性，通过气溶胶途径传播或传播途径不明，目前尚无有效的疫苗或治疗方法的致病微生物及其毒素。与上述情况类似的不明微生物，也必须在四级生物安全防护实验室中进行。待有充分数据后再决定此种微生物或毒素应在四级还是在较低级别的实验室中处理。

</td>
									
								</tr>
							</table>
							<div class="tab-space"></div>
							<!--<div class="pro-imgcs">
								<img src="../static/images/products/pro1-1.png"/>
							</div>-->
						</div>
						
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
							<li><i class="glyphicon glyphicon-phone"></i>移动电话：18112651385</li>
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