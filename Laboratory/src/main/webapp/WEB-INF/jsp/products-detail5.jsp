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
		<!--banner-->
		<div id="carousel-example-generic" class="carousel slide " data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			

			<!-- Controls -->
			
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
						<li class="active">化学实验室</li>
					</ol>
					
					<div class="pro-detail row">
						<div class="col-sm-4 col-xs-12 ">
							<img src="../static/images/7.png" />
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
									<td class="de-feature">化学实验室是提供化学实验条件及其进行科学探究的重要场所。其内有大量的仪器：铁架台、石棉网、酒精灯等实验工具。通常会配有化学药品柜，药柜里面有常用的化学药品
									，比如：五水硫酸铜（CuSO4·5H2O，即胆矾），氢氧化钠溶液，石灰石，盐酸等。<br>
									药品取用
1、药品的存放：一般固体药品放在广口瓶中，液体药品放在细口瓶中（少量的液体药品可放在滴瓶中），气体放在集气瓶中用玻璃片盖住。特殊的如金属钠存放在煤油中，白磷存放在水中
2、药品取用的总原则①取用量：按实验所需取用药品。如没有说明用量，应取最少量，固体以盖满试管底部为宜，液体以1~2mL为宜。多取的试剂不可放回原瓶，也不可乱丢，更不能带出实验室，应放在另一洁净的指定的容器内。②“三不”：任何药品不能用手拿、舌尝、或直接用鼻闻试剂（如需嗅闻气体的气味，应用手在瓶口轻轻扇动，仅使极少量的气体进入鼻孔）
3、固体药品的取用①粉末状及小粒状药品：用药匙（没有时用V形纸槽代替） ②块状及条状药品：用镊子夹取
4、液体药品的取用①液体试剂的倾注法： 取下瓶盖，倒放在桌上，（以免药品被污染）。标签应向着手心，（以免残留液流下而腐蚀标签）。拿起试剂瓶，将瓶口紧靠试管口边缘，试管倾斜，缓缓地注入试剂，倾注完毕，盖上瓶盖，标签向外，放回原处。②液体试剂的滴加法：滴管的使用：a、先在液体外挤压出滴管中的空气，后伸入液体吸取试剂b、滴入试剂时，滴管要保持垂直悬于容器口上方滴加c、使用过程中，始终保持橡胶头在上，不能倒置或横放，以免胶头被试剂腐蚀d、滴管用毕，立即用水洗涤干净（滴瓶上的滴管除外）e、胶头滴管使用时千万不能伸入容器中或与器壁接触，否则容易造成滴管头破裂
气密性检查
先将导管的一端浸入水中，用手紧贴容器外壁，稍停片刻，若导管口有气泡冒出，松开手掌，导管口部有水柱上升，稍停片刻，水柱慢慢回落，就说明装置不漏气。
物质加热
1、加热固体时，试管口应略下倾斜（防止冷凝水回流使试管破裂），加热试管时先均匀预热，再固定在铁架台上加热。
2、加热液体时，液体体积不超过试管容积的1/3，加热时使试管与桌面约成45°角，加热时，先预热试管，然后给试管里的液体的中下部加热，并且不时地上下移动试管。为了避免伤人，加热时切不可将试管口对着自己或他人。
过滤
1、“一贴二低三靠”“一贴”：滤纸紧贴漏斗的内壁
2、“二低”：（1）滤纸的边缘低于漏斗口 （2）漏斗内的液面低于滤纸的边缘
3、“三靠”：（1）漏斗下端的管口紧靠烧杯内壁 （2）用玻璃棒引流时，玻璃棒下端轻靠在三层滤纸的一边 （3）用玻璃棒引流时，烧杯尖嘴紧靠玻璃棒中部过滤后，滤液仍然浑浊的可能原因有:①承接滤液的烧杯不干净 ②倾倒液体时液面高于滤纸边缘 ③滤纸破损
蒸发
1、在加热过程中，用玻璃棒不断搅拌（作用：加快蒸发，防止由于局部温度过高，造成液滴飞溅）
2、当液体接近蒸干（或出现较多量固体）时停止加热，利用余热将剩余水分蒸发掉，以避免固体因受热而迸溅出来。
3、热的蒸发皿要用坩埚钳夹取，热的蒸发皿如需立即放在实验台上，要垫上石棉网。
仪器洗涤
1、废渣、废液倒入废液缸中，有用的物质倒入指定的容器中。
2、玻璃仪器洗涤干净的标准：玻璃仪器上附着的水，既不聚成水滴，也不成股流下
3、玻璃仪器中附有油脂：先用热的纯碱（Na2CO3）溶液或洗衣粉洗涤，再用水冲洗。
4、玻璃仪器中附有难溶于水的碱、碱性氧化物、碳酸盐：先用稀盐酸溶解，再用水冲洗。
5、仪器洗干净后，不能乱放，试管洗涤干净后，要倒插在试管架上晾干。
									
									
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