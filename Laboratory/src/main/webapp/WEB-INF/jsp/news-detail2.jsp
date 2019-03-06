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
					<a href="index.html">
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
						<li class=" hidden-xs">
							<a href="index.html">网站首页</a>
						</li>
						<li>
							<a href="about.html">关于蓝海</a>
						</li>
						<li>
							<a href="products.html">产品介绍</a>
						</li>
						<li class="active">
							<a href="news.html">新闻中心</a>
						</li>
						<li>
							<a href="contact.html">联系我们</a>
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

		<div class="abpg container">
			<div class="row">
				<!--<div class="col-md-3">
					<div class="model-title theme">
						关于我们
					</div>
					<div class="model-list">
						<ul class="list-group">
							<li class="list-group-item ">
								<a href="about.html">关于蓝海</a>
							</li>
						</ul>
					</div>
				</div>-->
				<div class="col-md-12 serli">
					<ol class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i>
							<a href="index.html">主页</a>
						</li>
						<li class="active">新闻中心</li>
					</ol>
					<div class="news-deatil">
						<h2>中国成功研制分辨多功能化学成像系统</h2>
						<p class="news-time">
							发布时间：2017-6-21
						</p>
						<img src="../static/images/news/news3.jpg"/>
						<div class="news-con">
							<p>
								中化新网讯 从中科院获悉，6月20日至21日，国家自然科学基金委员会在京对中国科学院化学研究所承担的重大仪器研制项目“高分辨多功能化学成像系统”进行了结题验收。
							</p>
							<p>
								项目负责人、中科院院士万立骏对“高分辨多功能化学成像系统”项目的完成情况进行了详细汇报。该系统包括超分辨光学STED成像模块、CARS成像模块、AFM成像模块、共聚焦激发的MALDI-MS成像模块、SIMS质谱成像模块等，能够在各模块单独工作的基础上，实现各模块之间的联用成像，在纳米尺度和分子水平对复杂体系界面结构进行形貌和化学组成表征。仪器测试专家组在验收会前对仪器进行了现场严格测试，全部技术指标达到或优于任务书预定的要求。利用研制的化学成像系统，项目组在能源材料和生物体系的表界面结构与功能等领域取得了系列研究成果，申请国际国内发明专利40余件，授权国际专利4件，国内专利14件，发表了一批高水平论文。
							</p>
							<p>
								“当前的低油价和高消费税的环境不利于炼油项目的发展，如果按原来的计划进行生产，惠州石化每年预计多亏18亿元左右。”侯凯峰说道。其提出惠州石化转型的基本思路是，在保证乙烯原料供应充足的前提下，进一步向芳烃改革升级，以减少汽油、柴油的产量。
							</p>
							<p>
								　验收专家组现场查看了研制系统的运行情况，并对财务和档案进行了验收。验收专家组听取了监理报告、仪器测试报告、档案验收报告和财务验收报告。通过现场考察和听取汇报，验收专家组认为，该项目完成了实施方案规定的研制任务，达到了项目预期目标，一致同意项目通过验收。
							</p>
						</div>
					</div>
					<ul class="pager">
					    <li class="previous"><a href="news-detail1.html"><span aria-hidden="true"></span> 上一篇：氯碱行业直面三大挑战</a></li>
					    <li class="next"><a href="news-detail3.html">下一篇：国内首个风电制氢工业应用项目制氢站开工 <span aria-hidden="true"></span></a></li>
				    </ul>
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
							<li><i class="glyphicon glyphicon-home"></i>公司地址：江苏省苏州市联邦国际花园</li>
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