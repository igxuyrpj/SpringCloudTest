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
						<li class="active hidden-xs">
							<a href="../index.jsp">实验室概述</a>
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
					<a href="${pageContext.request.contextPath}/route/index">
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

			<!-- Wrapper for slides -->
			<!-- <div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../static/images/banner/banner2.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner3.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner1.jpg">
				</div>
			</div> -->

			
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
				<div class="col-md-12 serli">
					<ol class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i>
							<a href="../index.jsp">主页</a>
						</li>
						<li class="active">师资力量介绍</li>
					</ol>
					
					<div class="pro-detail row">
						<div class="col-sm-4 col-xs-12 ">
							<img src="../static/images/11.png" />
							
						</div>
						<div class="col-sm-8 col-xs-12">
							<div class="pack">
								<ul>
									<li><a>详细信息</a></li>
								</ul>
							</div>
							<table>
								<tr>
									<td class="de-feature"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前,学校有专职教师566人。其中,正高级职称30人、副高级职称123人;博士(含在读)61人,硕士(含在读)425人;硕士以上学位教师已达80%以上;享受国务院政府津贴或获省、市级有突出贡献的中青年科技专家(拔尖人才)称号的5人,省级学科带头人和学术骨干培养对象6人,省级教学名师2人,省级教坛新秀8人,3个教学团队被评为省级教学团队。
									同时,大力提高管理与服务队伍素质,初步建立起一支与学校教育事业发展相适应的党政管理和后勤服务队伍。</td>
									
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