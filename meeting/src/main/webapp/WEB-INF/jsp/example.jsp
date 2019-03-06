<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../Meeting_files/hm.js"></script>

<meta property="og:image"
	content="http://www.huichangjia.com/templets/hcj/Picture/logo.jpg">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>会议场地</title>
<meta name="keywords" content="会议场地,会场出租,会议酒店,酒店会场,会议室预定,酒店会议室预定">
<meta name="description"
	content="会议场地预订，会场家是一家在线酒店会场预订平台，汇集全国各地酒店会议室，让企业在寻找会议酒店不再那么复杂，从而轻松就可以完成酒店会议室预定。">
<link rel="stylesheet" href="../Meeting_files/style.css">
<link rel="canonical" href="#">
<link rel="stylesheet" href="../Meeting_files/reset_v1.css">
<link rel="stylesheet" href="../Meeting_files/login.css">
<link rel="stylesheet" href="../Meeting_files/head2.css">
<script charset="utf-8" src="../Meeting_files/lxb.js"></script>
<script charset="utf-8" src="../Meeting_files/s.js"></script>
<script charset="utf-8" src="../Meeting_files/lxb.js"></script>
<script charset="utf-8" src="../Meeting_files/s.js"></script>
<script charset="utf-8" src="../Meeting_files/v.js"></script>
<script type="text/javascript"
	src="../Meeting_files/jquery-1.8.2.min.js"></script>

<script type="text/javascript">
	if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
			.test(navigator.userAgent)) {
		window.location = '#';
	}
	
	/* window.onload=function(){
		var tel="${info }";
		if (tel==2){
			alert("抱歉！每人一次只能预约一次。")
		}
	}; */
</script>

<script type="text/javascript">
	var ct = 'hengyang';
	var imgUrl = [];
	var imgLink = [];
	var bgcolor = [];
	var imgUrl2 = [];
	imgUrl[0] = "";
	imgUrl[1] = "";
	imgUrl2[0] = "";
	imgUrl2[1] = "";
	imgLink[0] = "javascript:;";
	imgLink[1] = "javascript:;";

	$(function() {
		$(document.body).removeClass('channel-page');
	})
</script>
<style type="text/css">
.publish-demand:hover {
	color: #fff;
}
</style>


<script type="application/javascript">
	
	function GetQueryString(name)
	{
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	}
	
	function showxuqiu(){
		var xuqiu = GetQueryString('xuqiu');
		if(null!=xuqiu && xuqiu == 1){
			$('#faxuqiu').attr('data-on','false');
			$('#faxuqiu dt').addClass('on');
			$('#faxuqiu .icon-r-arrow').hide();
			$('#faxuqiu dd').show();
			
		}
	}
	showxuqiu();
	

</script>
<script type="text/javascript" src="../Meeting_files/api"></script>
<script type="text/javascript" src="../Meeting_files/getscript"></script>
<link rel="stylesheet" href="../Meeting_files/news.css">
<link rel="stylesheet" href="../Meeting_files/zzsc.css">
<script src="../Meeting_files/news.js"></script>
<script src="../Meeting_files/layer.js"></script>
<link rel="stylesheet" href="../Meeting_files/layer.css"
	id="layui_layer_skinlayercss">


<link type="text/css" rel="stylesheet"
	href="../Meeting_files/laydate.css">
<link type="text/css" rel="stylesheet"
	href="../Meeting_files/laydate(1).css" id="LayDateSkin">
<script src="../Meeting_files/share.js"></script>
<link rel="stylesheet" href="../Meeting_files/share_style0_16.css">
</head>

<body class="">




	<script type="text/javascript">
		$(function() {
			//				场地供应商入驻 == 修改新增
			$(".joinUs").hover(function() {
				$(".joinUs").css({
					"border" : "1px solid #e5e5e5",
					"border-top" : "none",
					"height" : "52px"
				});
				$(".cdJoin").css({
					"height" : "auto"
				});
				$(this).prev(".line").hide();
				$(this).next(".line").hide()
			}, function() {
				$(".joinUs").css({
					"border" : "none",
					"height" : "24px"
				});
				$(".cdJoin").css({
					"height" : "24px"
				})
				$(this).prev(".line").show();
				$(this).next(".line").show()
			});
			$("#submit").click(
					function() {
						$val = $("#mainName").val();

						document.location.href = "/venue/22441-0-0-0-0-" + $val
								+ ".html"
					});

			$('#mainName').keydown(
					function(e) {
						if (e.keyCode == 13) {
							$val = $("#mainName").val();

							document.location.href = "/venue/22441-0-0-0-0-"
									+ $val + ".html";
							return false;

						}
					});
		})
	</script>


	<div class="hd clearfix">

		<div class="headBalaner hide">
			<a href="javascript:"><img src="../Meeting_files/headbanner.jpg"></a>
		</div>
		<div class="container clearfix">
		<span style="margin-left: 800px; font-size: 16px;">欢迎您:${name }</span>
			<a class="site-logo" href="../index.jsp" title="会场家"><img
				src="../Meeting_files/logo.png" alt="会场家"></a>
			<div class="change-city">
				<p class="blk">
					<span class="city">合肥</span> <em></em>
				</p>
				<p class="tip">一站式服务</p>
				<p class="tip hide">专业顾问</p>
				<p class="tip hide">海量会场</p>
				<p class="tip hide">优质套餐</p>
				<ul class="select-pop-city">
					<li><a href="#">广州</a></li>
					<li><a href="#">深圳</a></li>
					<li><a href="#">北京</a></li>
					<li><a href="#">上海</a></li>
					<li><a href="#">武汉</a></li>
					<li><a href="#">成都</a></li>
					<li><a href="#">杭州</a></li>
					<li><a href="#">天津</a></li>
					<li><a href="#">西安</a></li>
					<li><a href="#">南京</a></li>
					<li><a href="#">重庆</a></li>
					<li><a href="#">苏州</a></li>
					<li><a href="#">青岛</a></li>
					<li><a href="#">厦门</a></li>
					<li><a href="#">三亚</a></li>
					<li><a href="#">昆明</a></li>
				</ul>
			</div>
			<div class="link-publish">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="login.jsp">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/logOut">退出</a>
			</div>
			<div class="search">
				<form action="${pageContext.request.contextPath }/meeting/Search" method="post">
					<!-- <input type="text"  name="search"
						maxlength="64"  value=""
						placeholder="搜索城市">
						 <input type="submit"
						value="搜索" class="submit"> -->
						<input type="text"  name="search" style="height: 34px;"
						maxlength="64"  value=""
						placeholder="搜索城市">
						 <input type="submit"
						value="搜索" class="submit">
					<div class="search-result hide" id="focus-result">
						<dl class="clearfix">
							<dt>热门场地</dt>
							<dd>
								<a href="#">四星级酒店</a>
							</dd>
							<dd>
								<a href="#">三星级酒店</a>
							</dd>
							<dd>
								<a href="#">餐厅</a>
							</dd>
							<dd>
								<a href="#">咖啡厅</a>
							</dd>
							<dd>
								<a href="#">度假村</a>
							</dd>
							<dd>
								<a href="#">会议中心</a>
							</dd>
						</dl>
					</div>
					<div id="search-result" class="search-result hide"></div>
					<div class="search-tip">
						<a href="#">五星级酒店</a> <a href="#">会议场地</a> <a href="#">酒店会议室</a>
						<a href="#">艺术中心</a> <a href="#">培训场地</a> <a href="#">会所</a> <a
							href="#">展馆</a> <a href="#">小区社区</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="nav clearfix isMain">
		<div class="nav-in container clearfix">

			<ul class="menus">
				<li class="first">会场家为您服务</li>
				<li id="main"><a href="../index.jsp">首页</a></li>
				<li class="drop"><a
					href="${pageContext.request.contextPath}/meeting/example"> 热门会场<i
						class="hotNews1"></i>
				</a></li>
				<li class="w65"><a href="${pageContext.request.contextPath}/meeting/getMyNeeds">我的需求</a></li>
				<li class="w65"><a
					href="${pageContext.request.contextPath}/meeting/myOrder">我的预约<i
						class="hotNews"></i></a></li>
				<li><a href="${pageContext.request.contextPath}/meeting/alogin">管理员</a></li>
				<li class="last">服务热线：<img src="../Meeting_files/phone400.jpg"
					alt=""></li>
			</ul>
		</div>
		<div class="line-top hide"></div>
	</div>


	<!-- 首屏 -->
	<!-- slider begin -->
	<script type="text/javascript" src="../Meeting_files/moment.min.js"></script>
	<script type="text/javascript"
		src="../Meeting_files/fullcalendar.min.js"></script>
	<script type="text/javascript" src="../Meeting_files/zh-cn.js"></script>
	<!-- <div class="feature-focus" id="feature-focus"> -->
		<div style="margin-left: 500px;">

           <hr>
           <!-- ${pageContext.request.contextPath } -->
        <form  id="upload" method="post" action="${pageContext.request.contextPath }/meeting/upload" enctype="multipart/form-data">
          
     
          </form>
       
</div>

<div class="wrap">
        <!-- 景点门票开始 -->
            <div class="public-tit">
        	    <h3 class="fl"><strong>精选场地</strong></h3>
        	  
        	    <a class="public-tit-more fr" href="#" >更多酒店<i class="icon-v7 icon-v7-more"></i></a>
        	</div>
    		<div>
    			<!-- 公共左边导航模块开始 -->
    			
    			<!-- 公共左边导航模块结束 -->

    			<!-- 侧边产品list -->
    			<div class="public-pro clearfix fl" style="width:876px">
    				<div class="pro-list fl">		
                        <ul class="css3_liy-5 css3_run">
    							<!--1-->
        					<li class="w485_243">
        						<p class="pro-list-pic"><a href="#" title="广州浙江大厦会议室" ><img src="../Meeting_files/fsgsg.jpg" alt="广州浙江大厦会议室" height="295" width="485"></a></p>
        						<p class="pro-list-tit"><span class="pro-list-price fr"><i>￥</i><em>4000</em>起</span><a href="#" title="广州浙江大厦会议室" >广州浙江大厦会议室</a></p>
        					</li>
        				<!--2-->
        					<li class="w235_243">
        						<p class="pro-list-pic"><a href="#" title="广州贝塔空间" ><img src="../Meeting_files/ebe1bc5d2c6b93f07558e9123450102b.jpg" alt="广州贝塔空间" height="295" width="340"></a></p>
        						<p class="pro-list-tit"><span class="pro-list-price fr"><i>￥</i><em>3000</em>起</span><a href="#" title="广州贝塔空间" >广州贝塔空间</a></p>
        					</li>
        				<!--3-->
        		       		<li>
        						<p class="pro-list-pic"><a href="#" title="白云万达希尔顿酒店" ><img src="../Meeting_files/jyfjfhf.jpg" alt="白云万达希尔顿酒店" height="220" width="270"></a></p>
        						<p class="pro-list-tit"><span class="pro-list-price fr"><i>￥</i><em>275</em>起</span><a href="#" title="白云万达希尔顿酒店" >白云万达希尔顿酒店</a></p>
        					</li>
        				<!--4-->
        		       		<li>
        						<p class="pro-list-pic"><a href="#" title="广州明悦酒店会议室" ><img src="../Meeting_files/sdfsgrg.jpg" alt="广州明悦酒店会议室" height="220" width="270"></a></p>
        						<p class="pro-list-tit"><span class="pro-list-price fr"><i>￥</i><em>100</em>起</span><a href="#" title="广州明悦酒店会议室" >广州明悦酒店会议室</a></p>
        					</li>
        				<!--5-->
        		       		<li>
        						<p class="pro-list-pic"><a href="#" title="喆啡酒店（白云大道北店）" ><img src="../Meeting_files/fthrh.jpg" alt="喆啡酒店（白云大道北店）" height="220" width="270"></a></p>
        						<p class="pro-list-tit"><span class="pro-list-price fr"><i>￥</i>198<em></em>起</span><a href="#" title="喆啡酒店（白云大道北店）" >喆啡酒店（白云大道北店）</a></p>
        					</li>
    		            </ul>
                    </div>
    				
        </div>
<div class="mainright">
						<div class="mainright-show">
							<div class="mainright-title">办会议，为什么选「会场家」？</div>
							<div class="mainright-ul">
								<ul>
									<li>
										<div class="mainright-icon"><img src="../Meeting_files/mainright-icon-1.png"></div>
										<div class="mainright-font"><span>100%</span>免收服务费</div>
									</li>
									<li>
										<div class="mainright-icon"><img src="../Meeting_files/mainright-icon-2.png"></div>
										<div class="mainright-font">直连<span>3万</span>家酒店和特色场地</div>
									</li>
									<li>
										<div class="mainright-icon"><img src="../Meeting_files/mainright-icon-5.png"></div>
										<div class="mainright-font" style="width:100%;">配套服务，<span>一键</span>搞定</div>
									</li>
									<li>
										<div class="mainright-icon"><img src="../Meeting_files/mainright-icon-4.png"></div>
										<div class="mainright-font"><span>一对一</span>会务顾问咨询服务</div>
									</li>
								</ul>
								<div class="mainrightbutton"><button type="button" /releasedemand.html&#39;">立即体验</button></div>
							</div>
						</div>
						<div class="mainright-mt"><a href="#"><img src="../Meeting_files/mainright-img.jpg" style="height: 224px;width: 300px;"></a></div>
					</div>
        <!-- 景点门票结束 -->
    </div>


	<br>

</div>


<div id="Content">
	<div class="Index_Title">精选酒店</div>
	<div class="Hot_Pro">
		     <ul>
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/01.jpg" width="220" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">水悦年华酒店</a></div>
					<div class="Pro_info">广州水悦年华酒店（番禺长隆店）是一家赋予时尚新概念设计的连锁品牌酒店...</div>
				</li>
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/02.jpg" width="220" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">从化湖光度假山庄</a></div>
					<div class="Pro_info">广州从化湖光度假山庄是广州打捞局投资兴建的旅游度假山庄，位于山清水秀...</div>
				</li>
			
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/03.jpg" width="220" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">从化财富度假酒店</a></div>
					<div class="Pro_info">从化财富度假酒店，是深圳市时代财富（集团）公司下属企业，由深圳市财富...</div>
				</li>
			
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/04.jpg" width="220" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州新广地商务酒店</a></div>
					<div class="Pro_info">酒店位于广州市番禺区番禺大桥西侧。倚靠广州星河湾、新广地花园等豪华别墅...</div>
				</li>
			
				<li class="E">
					<div class="img"><a  href="#"><img src="../Meeting_files/05.jpg" width="220" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">凯荣都国际大酒店</a></div>
					<div class="Pro_info">广州凯荣都国际大酒店位于广州市海珠区江海大道，紧靠新光快速、华南快速路...</div>
				</li>
				
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/06.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州星河湾酒店</a></div>
					<div class="Pro_info">星河湾酒店是中国第六家的世界一流饭店组织成员的五星级酒店。以城中独有的...</div>
				</li>
						
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/07.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州骏粤大酒店</a></div>
					<div class="Pro_info">广州骏粤大酒店座落于广州市番禺区南村镇迎宾路与兴南大道入口的交汇处，地...</div>
				</li>
					
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/08.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州喜御酒店</a></div>
					<div class="Pro_info">广州喜御酒店是集客房、会议、宴会、大型餐饮、商务休闲等功能于一体按五星...</div>
				</li>
						
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/09.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州增城保利皇冠假日酒店</a></div>
					<div class="Pro_info">广州增城保利皇冠假日酒店是您下一次到访广州新塘聚会，工作或是度假的理想...&nbsp;</div>
				</li>
						
				<li class="E">
					<div class="img"><a  href="#"><img src="../Meeting_files/10.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州珠江国际酒店</a></div>
					<div class="Pro_info">广州珠江国际酒店坐落在广州市海珠区逸景路珠江国际纺织城，是中大布匹商圈...</div>
				</li>
					
			   <li>
					<div class="img"><a  href="#"><img src="../Meeting_files/11.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州琶洲酒店</a></div>
					<div class="Pro_info">琶洲酒店地理位置得天独厚，交通十分便利，距广州琶洲国际会展中心仅二分钟...</div>
				</li>
						
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/12.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州白云宾馆</a></div>
					<div class="Pro_info">广州白云宾馆是广州市中心最知名的五星级商务酒店之一，细致、优质的服务、...</div>
				</li>
								
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/13.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州明悦酒店</a></div>
					<div class="Pro_info">广州明悦酒店是一家集住宿、商务、旅行、休闲、娱乐、餐饮、会议功能为...</div>
				</li>
				
				<li>
					<div class="img"><a  href="#"><img src="../Meeting_files/14.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州京溪礼顿酒店</a></div>
					<div class="Pro_info">广州京溪礼顿酒店由嘉裕集团投资建造，由集团旗下嘉逸酒店管理集团管理...&nbsp;</div>
				</li>
				
				<li class="E">
					<div class="img"><a  href="#"><img src="../Meeting_files/15.jpg" width="210" height="150"></a></div>
					<div class="Pro_Title"><a  href="#">广州花之恋国际城堡酒店</a></div>
					<div class="Pro_info">广州花之恋国际城堡酒店项目占地50亩，四周围绕着来自世界各地的鲜花...&nbsp;</div>
				</li>
			
		</ul>
	</div>
	 <div class="clear"></div>
</div>


	<!-- </div> -->
	<!-- slider end -->

	<div class="container">




		<br>


		<!-- 广播台 begin -->


		<!-- 广播台 end -->

	</div>

	<!--分类浏览 -->

	<!-- 分类浏览 begin 场地类型-->
	<style>
.head_ico li {
	float: left;
	margin-right: 60px;
}

.head_ico li im {
	float: left;
}

.head_ico li div {
	margin-top: 10px;
	float: right;
}
</style>

	<!-- 分类浏览 end -->
	<div style="clear: both;"></div>
	<!-- 友情链接 begin -->

	<script>
		$(function() {
			$('.more').on(
					'click',
					function() {
						$(this).parent().parent().find('.city-list')
								.removeClass('hide');
						$(this).parent().remove();
					});
		});
	</script>
	<!-- 友情链接 end -->

	<script type="text/javascript" src=".../Meeting_files/laydate.js"></script>

	<!-- <script type="text/javascript" src="http://www.huichangjia.com/templets/hcj/Scripts/slider.js"></script> -->
	<script src="../Meeting_files/home.js"></script>
	<script type="text/javascript" src="../Meeting_files/index.js"></script>
	<script type="text/javascript"
		src="../Meeting_files/jquery.sochange.js"></script>
	<script type="text/javascript">
		function loadImg() {
			$('.feature-focus .a_bigImg').soChange({
				thumbObj : '.ul_change li span',
				thumbNowClass : 'on',
				btnPrev : '.feature-focus .a_last',
				btnNext : '.feature-focus .a_next',
				changeTime : 3000
			});

		}
		$(function() {

			$('.nav').addClass('isMain');
			$('.line-top').addClass('hide');
		});
	</script>


	<script type="text/javascript" src="../Meeting_files/base64.js"></script>
	<script type="text/javascript" src="../Meeting_files/jquery.cookie.js"></script>
	<script>
		$(function() {
			// 悬浮窗口
			$(".yb_conct").hover(function() {
				$(".yb_conct").css("right", "5px");
				$(".yb_bar .yb_ercode").css('height', '200px');
			}, function() {
				$(".yb_conct").css("right", "-127px");
				$(".yb_bar .yb_ercode").css('height', '53px');
			});

		});
	</script>
	<!-- footer begin -->
	<div class="thc-footer">
		<div class="container">
			<div class="footer-l fl">
				<p class="nav-link">
					<a rel="nofollow" href="#">关于我们</a> <span>|</span> <a
						rel="nofollow" href="#">联系方式</a> <span>|</span> <a rel="nofollow"
						href="#">服务条款</a> <span>|</span> <a rel="nofollow" href="#">隐私政策</a>

					<a href="#">百度地图</a> <span>|</span> <a href="#">谷歌地图</a>
				</p>

				<p class="text">
					<span>Copyright © 2002-2016 版权所有&nbsp;&nbsp;&nbsp;



						&nbsp;&nbsp; 
				</p>

			</div>





		</div>
	</div>




	<!--<div class="yb_conct">
  <div class="yb_bar">
    <ul>
      <li class="yb_phone">400-838-6118</li>
      <li class="yb_QQ">
      	<a  href="http://wpa.qq.com/msgrd?v=3&uin=1557373031&site=qq&menu=yes" title="即刻发送您的需求">在线咨询</a>
      </li>
      <li class="yb_ercode" style="height:53px;">微信二维码 <br>
        <img class="hd_qr" src="/templets/hcj/Picture/wx.jpg" width="125" alt="关注你附近"> </li>
    </ul>
  </div>
</div>-->

	<!-- 返回顶部 begin -->
	<div id="top-box">
		<a id="go-top" href="javascript:void(0)"></a>
	</div>
	<!-- 返回顶部 end -->

	<div id="tbox" style="right: 40px; bottom: 40px;">
		<a id="gotop" href="javascript:void(0)"></a>
	</div>

	<div id="dialog-overlay" class="dialog-overlay hide"></div>

	<script src="../Meeting_files/pop-dialog.js"></script>
	<script>
		var currentCitySp = "hengyang";
		var currentCity = "hengyang";
	</script>
	<div id="overlay-layer" class="overlay-layer hide"></div>
	<script type="text/javascript" src="../Meeting_files/commons.js"></script>
	<script type="text/javascript" src="../Meeting_files/jquery.md5.js"></script>
	<script charset="utf-8" src="../Meeting_files/wpa.js"></script>

	<script>
		var isLogin = "";
		$(function() {
			$('.btn-collection').on(
					'click',
					function() {
						if (isLogin) {
							$.post('/member/createCollection', 'businessId='
									+ $(this).data('id') + '&type='
									+ $(this).data('type'), function(result) {
								if (result.code == "0") {
									alert('成功');
									if ($('.nav').hasClass('hasCollection')) {
										location.reload();
									}
								}
							});
						} else {
							$('.nav').attr('data', $(this).attr('data'));
							$('.nav').addClass('hasCollection');
							$('.header').addClass('hasCollection');
							$('.login-pop-dialog').removeClass('hide');
							$('.order-pop-dialog').addClass('hide');
							$('[data-id=login-pop-dialog]').trigger('click');
						}
					});
			if (!$('.nav').hasClass('isMain')) {
				$('.nav .nav-side').remove();
			}
		});
	</script>
	<script type="text/javascript">
		$(function() {
			//输入框提示		
			$(".inputBox").click(function() {
				$(this).css("border-color", "red")
				$(this).find(".inp").focus();
				$(this).find(".inpTip").hide();
			});

			$(".inputBox .inp").blur(function() {
				$(this).parent(".inputBox").css("border-color", "#cfcfcf");
				if ($(this).val() == "") {
					$(this).prev(".inpTip").show();
				} else {
					$(this).prev(".inpTip").hide();
				}
			});

			//关闭弹窗
			$(".closePop").click(function() {
				$(".overlay-layer").addClass('hide');
				$(".loginPop").addClass('hide');
			});
		});
	</script>
	<script>
		var cityId = 22441;

		var currentCityName = "衡阳";
		var cityType = "hengyang";
		var venueType = "";
		var actType = "";
		var wzjt = ""
		var wzjtValue = "";
		var people = "";
		var peopleView = "";
		var area = "";
		var areaView = "";
		var storeType = "";
		var assorts = "";
		var features = "";
		var facilitys = "";
		var sortType = "";
		var sortValue = "";
		var fullShot = "";
		var isReserve = "";
	</script>

	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F1a58c5afff225ed51a95254ea7227d8b' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script src="../Meeting_files/h.js" type="text/javascript"></script>


	<script src="../Meeting_files/venue-list.js"></script>
	<script type="text/javascript" src="../Meeting_files/pop-login.js"></script>
	<script type="text/javascript"
		src="../Meeting_files/jquery.validationengine-zh_cn.js"></script>
	<script type="text/javascript"
		src="../Meeting_files/jquery.validationengine.js"></script>
	<script src="../Meeting_files/datepicker_v1.js"></script>
	<script src="../Meeting_files/script_v1.js"></script>

</body>
</html>