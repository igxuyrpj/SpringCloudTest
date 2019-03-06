<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./Meeting_files/hm.js"></script>

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
<link rel="stylesheet" href="./Meeting_files/style.css">
<link rel="canonical" href="#">
<link rel="stylesheet" href="./Meeting_files/reset_v1.css">
<link rel="stylesheet" href="./Meeting_files/login.css">
<link rel="stylesheet" href="./Meeting_files/head2.css">
<script charset="utf-8" src="./Meeting_files/lxb.js"></script>
<script charset="utf-8" src="./Meeting_files/s.js"></script>
<script charset="utf-8" src="./Meeting_files/lxb.js"></script>
<script charset="utf-8" src="./Meeting_files/s.js"></script>
<script charset="utf-8" src="./Meeting_files/v.js"></script>
<script type="text/javascript" src="./Meeting_files/jquery-1.8.2.min.js"></script>

<script type="text/javascript">
	if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
			.test(navigator.userAgent)) {
		window.location = '#';
	}

	/* 
	 window.onload=function(){
	 var tel="${info }";
	 if (tel==13){
	 alert("会议室预约成功！")
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

		function getQueryString(name) {
			var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
			var r = window.location.search.substr(1).match(reg);
			if (r != null) {
				return unescape(r[2]);
			}
			return null;
		}
		// 这样调用：
		if (GetQueryString("info") == 2) {
			alert("抱歉！每人一次只能预约一次。")
		}
		if (GetQueryString("info") == 13) {
			alert("成功预约会议室!")
		}
		if (GetQueryString("info") == 12) {
			alert("你已成功提交需求,我们会尽快回复您!")
		}

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
<script type="text/javascript" src="./Meeting_files/api"></script>
<script type="text/javascript" src="./Meeting_files/getscript"></script>
<link rel="stylesheet" href="./Meeting_files/news.css">
<link rel="stylesheet" href="./Meeting_files/zzsc.css">
<script src="./Meeting_files/news.js"></script>
<script src="./Meeting_files/layer.js"></script>
<link rel="stylesheet" href="./Meeting_files/layer.css"
	id="layui_layer_skinlayercss">


<link type="text/css" rel="stylesheet"
	href="./Meeting_files/laydate.css">
<link type="text/css" rel="stylesheet"
	href="./Meeting_files/laydate(1).css" id="LayDateSkin">
<script src="./Meeting_files/share.js"></script>
<link rel="stylesheet" href="./Meeting_files/share_style0_16.css">
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
			<a href="javascript:"><img src="./Meeting_files/headbanner.jpg"></a>
		</div>
		<div class="container clearfix">
			<span style="margin-left: 800px; font-size: 16px;">欢迎您:${name }</span>
			<a class="site-logo" href="index.jsp" title="会场家"><img
				src="./Meeting_files/logo.png" alt="会场家"></a>
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
					href="login.jsp">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="${pageContext.request.contextPath}/logOut">退出</a>
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
			<div class="nav-side">
				<dl data-on="true" class="active">
					<dt>
						<i class="icon-findsite"></i>
						<div class="nav-side-name">
							<h3>发需求</h3>
							<span>10万海量场地等着您</span>
						</div>
						<i class="icon-r-arrow"></i>
					</dt>
					<dd>
						<div class="side-show">
							<div class="side-show-bg"></div>
							<div class="side-show-r">

								<h4 style="text-align: center;">
									<b>入驻供应商<span style="color: #0072dd;">38545</span>个
									</b>
								</h4>
								<h4 style="text-align: center;">
									<b>发布场地信息<span style="color: #0072dd;">457568</span></b>
								</h4>
								<h4 style="text-align: center;">
									<b>块供您筛选！</b>
								</h4>



							</div>
							<div class="side-show-l">
								<form class="search-form search-main"
									action="${pageContext.request.contextPath }/meeting/myneeds"
									method="post">
									<table border="1" cellpadding="15" align="center">
										<tr>
											<td style="font-size: 18px;" width="190px;">城市</td>
											<td><input style="font-size: 18px;" text" name="city"
												value="" class="Required" placeholder="请输入城市"> <!-- 
				  <select style="font-size: 18px;" name="city" required="">
																<option>合肥</option>
																<option>南京</option>
																<option>上海</option>
																<option>杭州</option>
																<option>苏州</option>
																<option>北京</option>
																<option>广州</option>
																<option>...</option>
																


															</select>
				   --></td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>

										<tr>
											<td style="font-size: 18px;">类型</td>
											<td><select style="font-size: 18px;" name="type"
												required="">
													<option>会议室</option>
													<option>宴会厅</option>
													<option>广场</option>
													<option>礼堂</option>
													<option>主题</option>
													<option>其他</option>




											</select></td>
										</tr>

										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">预约时间</td>
											<td><input type="date" name="time" value=""
												class="Required" placeholder="开始时间"></td>
											<!--   <td><input type="date" name="time" value="" class="Required" placeholder="结束时间"></td> -->
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">房间价格(￥)</td>
											<td><input style="font-size: 18px;" text" name="money"
												value="" class="Required" placeholder="请输入预算"> <!-- <select style="font-size: 18px;" name="money" required="">
																<option>500以下</option>
																<option>500~1000</option>
																<option>1000~3000</option>
																<option>3000~5000</option>
																<option>5000~8000</option>
																<option>8000~10000</option>
																<option>10000以上</option>															

															</select> --></td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">容纳人数(人)</td>
											<td><input style="font-size: 18px;" text" name="num"
												value="" class="Required" placeholder="请输入人数"> <!-- <select style="font-size: 18px;" name="num" required="">
																<option>10以下</option>
																<option>10~30</option>
																<option>30~50</option>
																<option>50~80</option>
																<option>80~100</option>
																<option>100~150</option>
																<option>150~200</option>
																<option>200以上</option>
																


															</select> --></td>
										</tr>
										<!-- <tr>  
				 <td>会议室图片</td>
				 <td>   <input type="file"  name="pic" id="pic">
				 </td> -->
										<!--  <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="5" id="user-intro" name="info"
																placeholder="输入备注"></textarea></td>
				</tr> -->

										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td colspan="2" align="center" width="200px;"><input
												style="font-size: 30px;" type="submit" value="发需求"></td>
										</tr>
									</table>





									<!-- <h3 style="margin-left: 15px;">
									<p>
									<img src="./Meeting_files/tztp.png" width="35px" style="margin-right: 15px">
								
                                    15分钟快速响应 专业顾问1对1帮您找场地 
									<span style="color:#ff9703; font-size:16px;">
									<span style="font-size:26px;color:#ff9703">100%</span>免费服务</span>
									
									
                                    </p>
								
								</h3>

								
								<div class="row">
									<div class="field field1 fl">
										<i class="icon-city"></i>
										<label>会议城市：</label>
										<input type="hidden" value="" data-py="" class="demand-cityId">
										<input name="check-city" class="form-control demand-cityName" value="" readonly="readonly" type="text" datatype="*">
										<ul class="check-city-box check-box demand-citys" style="display: none">
											<li><a href="javascript:;" data-py="22442" data-id="22442">深圳</a></li><li><a href="javascript:;" data-py="22441" data-id="22441">广州</a></li><li><a href="javascript:;" data-py="23227" data-id="23227">北京</a></li><li><a href="javascript:;" data-py="23229" data-id="23229">上海</a></li><li><a href="javascript:;" data-py="23230" data-id="23230">武汉</a></li><li><a href="javascript:;" data-py="23231" data-id="23231">成都</a></li><li><a href="javascript:;" data-py="23232" data-id="23232">杭州</a></li><li><a href="javascript:;" data-py="23233" data-id="23233">天津</a></li><li><a href="javascript:;" data-py="23234" data-id="23234">西安</a></li><li><a href="javascript:;" data-py="23235" data-id="23235">南京</a></li><li><a href="javascript:;" data-py="23236" data-id="23236">重庆</a></li><li><a href="javascript:;" data-py="23237" data-id="23237">苏州</a></li><li><a href="javascript:;" data-py="23238" data-id="23238">青岛</a></li><li><a href="javascript:;" data-py="23239" data-id="23239">厦门</a></li><li><a href="javascript:;" data-py="23240" data-id="23240">三亚</a></li><li><a href="javascript:;" data-py="23241" data-id="23241">昆明</a></li><li><a href="javascript:;" data-py="25541" data-id="25541">贵阳</a></li><li><a href="javascript:;" data-py="25542" data-id="25542">沈阳</a></li><li><a href="javascript:;" data-py="25540" data-id="25540">东莞</a></li><li><a href="javascript:;" data-py="25539" data-id="25539">长沙</a></li>
											
										</ul>
									</div>
									<div class="field field1 field-r fl">
										<i class="icon-area"></i>
										<label>区域：</label>
										<input type="hidden" value="-1" data-py="" class="demand-disId">
										<input name="check-area" readonly="readonly" class="form-control-r form-control demand-disName" value="" type="text">
										<ul class="check-area-box check-box demand-dis demand-dis1" style="display: none"><li><a href="javascript:;" data-id="-1">不限</a></li><li><a href="javascript:;" data-id="22455">海珠区</a></li><li><a href="javascript:;" data-id="22454">荔湾区</a></li><li><a href="javascript:;" data-id="22881">越秀区</a></li><li><a href="javascript:;" data-id="22882">天河区</a></li><li><a href="javascript:;" data-id="22883">白云区</a></li><li><a href="javascript:;" data-id="22884">萝岗区</a></li><li><a href="javascript:;" data-id="22885">番禺区</a></li><li><a href="javascript:;" data-id="22886">从化市</a></li><li><a href="javascript:;" data-id="23127">黄埔区</a></li><li><a href="javascript:;" data-id="23128">花都区</a></li><li><a href="javascript:;" data-id="23129">南沙区</a></li><li><a href="javascript:;" data-id="23130">增城市</a></li></ul>
									</div>
								</div>
							 <div class="row">
									<div class="field field2">
										<i class="icon-style"></i>
										<label>会议类型：</label>
										<input name="check-style" readonly="readonly" class="demand-act  form-control check-style" type="text">
										 <ul class="check-style-box check-box act" id="hyType" style="display: none">
										<li data="22646"> <a href="javascript:;" title="会议室">会议室</a></li>
										<li data="22647"> <a href="javascript:;" title="宴会厅">宴会厅会议室广场礼堂主题其他</a></li>
									
										</li><li data="22649"> <a href="javascript:;" title="广场 ">广场 </a></li>
										<li data="22650"> <a href="javascript:;" title="运动场地">运动场地</a></li>
										<li data="22651"> <a href="javascript:;" title="展厅">展厅</a></li>
										<li data="22652"> <a href="javascript:;" title="礼堂">礼堂</a></li>
										<li data="22653"> <a href="javascript:;" title="主题">主题</a></li>									
										<li data="22656"> <a href="javascript:;" title="其他">其他</a></li>
										</ul> 
									</div>
								</div> 
								<div class="row">
									<div class="field fl">
										<i class="icon-date"></i>
										<label>会议时间：</label>
										<input name="check-begin" readonly="readonly" class="form-control notNull beginTime" id="check-begin" type="text">
									</div>
									<div class="field field-r fl">
										<i class="icon-date"></i>
										<label>至&nbsp;&nbsp;&nbsp;&nbsp;</label>
										<input name="check-end" readonly="readonly" class=" form-control-r form-control notNull endTime" id="check-end" type="text">
									</div>
								</div>
								<div class="row">
									<div class="field fl">
										<i class="icon-price"></i>
										<label>会议预算：</label>
										<input name="check-price" readonly="readonly" data-value="" class="demand-prices form-control notNull" type="text">
										<ul class="check-price-box check-box prices" style="display: none">
										<li data="A,2000"> <a href="javascript:;">2000￥以下</a> </li>
										<li data="2000,6000"> <a href="javascript:;">2000-6000￥</a> </li>
										
										<li data="6000,10000"> <a href="javascript:;">6000-10000￥</a> </li>
										
										<li data="10000,A"> <a href="javascript:;">10000￥以上</a> </li>
										</ul>
									</div>
									<div class="field field-r fl">
										<i class="icon-person"></i>
										<label>人数：</label>
										<input name="check-person" readonly="readonly" data-value="" class="form-control-r demand-number form-control notNull" type="text">
										<ul class="check-person-box check-box number" style="display: none">
										<li data="A,30"> <a href="javascript:;" title="30人以下">30人以下</a></li>
										<li data="30,60"> <a href="javascript:;" title="30-60人">30-60人</a></li>
										<li data="60,100"> <a href="javascript:;" title="60-100人">60-100人</a></li>
										<li data="100,200"> <a href="javascript:;" title="100-200人">100-200人</a></li>
										<li data="200,300"> <a href="javascript:;" title="200-300人">200-300人</a></li>
										<li data="300,500"> <a href="javascript:;" title="300-500人">300-500人</a></li>
										<li data="500,A"> <a href="javascript:;" title="500人以上">500人以上</a></li>
										</ul>
									</div>
								</div>
								<div class="row submit-row">
									
									<input type="button" class="submit-btn" value="立即搜索"></div>
							 -->

									<!-- <table border="1" cellpadding="15" align="center">
				<tr>
				  <td style="font-size: 18px;" width="190px;">城市</td>
				  <td><input type="text" name="city" value="" class="Required" placeholder="请输入所在城市">
				  
				  <select style="font-size: 18px;" name="city" required="">
				                                                <option>全部</option>
																<option>合肥</option>
																<option>南京</option>
																<option>上海</option>
																<option>杭州</option>
																<option>苏州</option>
																<option>北京</option>
																<option>广州</option>
																<option>...</option>
																


															</select>
				  
				  </td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				
				<tr>
				  <td style="font-size: 18px;">类型</td>
				  <td><select style="font-size: 18px;" name="type" required="">
				                                                <option>全部</option>
																<option>会议室</option>
																<option>宴会厅</option>
																
																<option>广场</option>
																<option>礼堂</option>
																<option>主题</option>
																<option>其他</option>
																



															</select></td>
				</tr>
				
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>  <td style="font-size: 18px;">预约时间</td>
				  <td><input type="date" name="time" value="" class="Required" placeholder="开始时间"></td>
				  <td><input type="date" name="time" value="" class="Required" placeholder="结束时间"></td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>
				  <td style="font-size: 18px;">房间价格(￥)</td>
				  <td><select style="font-size: 18px;" name="money" required="">
															 <option>全部</option>
																<option>200</option>
																<option>500</option>
																<option>1500</option>
																<option>2500</option>
																<option>3500</option>
																<option>4500</option>
																<option>4500以上</option>


															</select></td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>
				  <td style="font-size: 18px;">容纳人数</td>
				  <td><select style="font-size: 18px;" name="num" required="">
				                                                 <option>全部</option>
																<option>10</option>
																<option>30</option>
																<option>50</option>
																<option>80</option>
																<option>100</option>
																<option>150</option>
																<option>200</option>
																<option>200以上</option>
																


															</select></td>
				</tr>
				<tr>  
				 <td>会议室图片</td>
				 <td>   <input type="file"  name="pic" id="pic">
				 </td>
                <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="5" id="user-intro" name="info"
																placeholder="输入备注"></textarea></td>
				</tr>
                 
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
           <tr> <td colspan="2" align="center" width="200px;">
            <input style="font-size: 30px;" type="submit" value="找场地"></td></tr>
    </table> 
				-->


								</form>
								<form action="#" class="search-href"></form>

							</div>
						</div>
					</dd>
				</dl>


				<dl data-on="true" id="faxuqiu">
					<dt>
						<i class="icon-publish"></i>
						<div class="nav-side-name">
							<h3>找场地</h3>
							<span>专业顾问一站式为您服务</span>
						</div>
						<i class="icon-r-arrow"></i>
					</dt>


					<dd style="display: block;">
						<div class="side-show">
							<div class="side-show-bg2"></div>


							<div class="side-show-r">

								<h4 style="text-align: center;">
									<b>发布需求<span style="color: #0072dd;">54323</span>条
									</b>
								</h4>
								<h4 style="text-align: center;">
									<b>累计处理<span style="color: #0072dd;">32432</span>个
									</b>
								</h4>
								<h4 style="text-align: center;">
									<b>成功服务用户<span style="color: #0072dd;">30535</span>个
									</b>
								</h4>

							</div>



							<div class="side-show-l" style="">
								<form class="publish-form demand-main" method="post"
									action="${pageContext.request.contextPath }/meeting/getRoomsByCondition">
									<!-- 第一步 begin -->
									<!-- <div class="first-step ">
									<h3 style="margin-bottom: 30px;margin-left: 15px;">
									
									<p>
									<img src="./Meeting_files/tztp.png" width="35px" style="margin-right: 15px">
                                    15分钟快速响应 专业顾问1对1帮您找场地 <span style="color:#ff9703; font-size:16px;">
									<span style="font-size:26px;color:#ff9703">100%</span> 免费服务</span>
									
                                    </p>
									
									</h3>
									<div class="row">
										<div class="field field2">
											<label>公司名称：</label>
											<input class=" form-control check-style" name="gsname" id="gsname" type="text">
										</div>
									</div>
								 								
									<div class="row">
										<div class="field field1 fl">
											<i class="icon-city"></i>
											<label>会议城市：</label>
											<input type="hidden" value="" data-py="" name="cityId" class="demand-cityId">
											<input class="form-control demand-cityName" value="" readonly="readonly" name="city" type="text">
											<ul style="display: none;" class="check-city-box check-box demand-citys">
												<li><a href="javascript:;" data-py="22442" data-id="22442">深圳</a></li><li><a href="javascript:;" data-py="22441" data-id="22441">广州</a></li><li><a href="javascript:;" data-py="23227" data-id="23227">北京</a></li><li><a href="javascript:;" data-py="23229" data-id="23229">上海</a></li><li><a href="javascript:;" data-py="23230" data-id="23230">武汉</a></li><li><a href="javascript:;" data-py="23231" data-id="23231">成都</a></li><li><a href="javascript:;" data-py="23232" data-id="23232">杭州</a></li><li><a href="javascript:;" data-py="23233" data-id="23233">天津</a></li><li><a href="javascript:;" data-py="23234" data-id="23234">西安</a></li><li><a href="javascript:;" data-py="23235" data-id="23235">南京</a></li><li><a href="javascript:;" data-py="23236" data-id="23236">重庆</a></li><li><a href="javascript:;" data-py="23237" data-id="23237">苏州</a></li><li><a href="javascript:;" data-py="23238" data-id="23238">青岛</a></li><li><a href="javascript:;" data-py="23239" data-id="23239">厦门</a></li><li><a href="javascript:;" data-py="23240" data-id="23240">三亚</a></li><li><a href="javascript:;" data-py="23241" data-id="23241">昆明</a></li><li><a href="javascript:;" data-py="25541" data-id="25541">贵阳</a></li><li><a href="javascript:;" data-py="25542" data-id="25542">沈阳</a></li><li><a href="javascript:;" data-py="25540" data-id="25540">东莞</a></li><li><a href="javascript:;" data-py="25539" data-id="25539">长沙</a></li>
											</ul>
										</div>
										<div class="field field1 field-r fl">
											<i class="icon-area"></i>
											<label>区域：</label>
											<input type="hidden" value="-1" data-py="" name="districtId" class="demand-disId">
											<input class="form-control-r form-control demand-disName" readonly="readonly" name="district" value="" type="text">
											<input class="form-control demand-disType" readonly="readonly" value="行政区" name="districtType" type="hidden">
											<ul style="display: none;" class="check-area-box check-box demand-dis demand-dis2"><li><a href="javascript:;" data-id="-1">不限</a></li><li><a href="javascript:;" data-id="22455">海珠区</a></li><li><a href="javascript:;" data-id="22454">荔湾区</a></li><li><a href="javascript:;" data-id="22881">越秀区</a></li><li><a href="javascript:;" data-id="22882">天河区</a></li><li><a href="javascript:;" data-id="22883">白云区</a></li><li><a href="javascript:;" data-id="22884">萝岗区</a></li><li><a href="javascript:;" data-id="22885">番禺区</a></li><li><a href="javascript:;" data-id="22886">从化市</a></li><li><a href="javascript:;" data-id="23127">黄埔区</a></li><li><a href="javascript:;" data-id="23128">花都区</a></li><li><a href="javascript:;" data-id="23129">南沙区</a></li><li><a href="javascript:;" data-id="23130">增城市</a></li></ul>
										</div>
									</div>
									<div class="row">
										<div class="field field2">
											<i class="icon-style"></i>
											<label>会议类型：</label>
											<input class="demand-act form-control check-style" readonly="readonly" name="eventType" type="text">
											<ul style="display: none" class="check-style-box check-box act" id="hylx">
											<li data="23115"> <a href="javascript:;" title="讲座">讲座</a></li> 
											
											<li data="23117"> <a href="javascript:;" title="交流">交流</a>


											
											<li data="23121"> <a href="javascript:;" title="巡展">巡展</a></li>
											<li data="23122"> <a href="javascript:;" title="论坛">论坛</a></li>
											<li data="23123"> <a href="javascript:;" title="展示">展示</a></li>
											
											</ul>
										</div>
									</div>
									<div class="row">
										<div class="field fl">
											<i class="icon-date"></i>
											<label>会议时间：</label>
											<input class="form-control demand-beginTime" readonly="readonly" id="check-begin2" name="gmtEventBegin" type="text"></div>
										<div class="field field-r fl">
											<i class="icon-date"></i>
											<label>至&nbsp;&nbsp;&nbsp;&nbsp;</label>
											<input class="form-control-r form-control demand-endTime" readonly="readonly" id="check-end2" name="gmtEventEnd" type="text"></div>
									</div>
									<div class="row">
										<div class="field  fl">
											<i class="icon-price"></i>
											<label>会议预算：</label>
											<input type="hidden" class="txt section-number section" name="budgetMin" readonly="" placeholder="最小预算" id="budgetMin" data-value="">
             								<input type="hidden" class="txt section-number section" name="budgetMax" readonly="" placeholder="最大预算" id="budgetMax" data-value="">
              
											<input class="form-control demand-prices" readonly="readonly" data-value="" name="check-price" type="text">
											<ul style="display: none" class="check-price-box check-box prices">
											<li data="A,2000"> <a href="javascript:;">2000￥以下</a> </li><li data="2000,4000"> <a href="javascript:;">2000-4000￥</a> </li><li data="4000,6000"> <a href="javascript:;">4000-6000￥</a> </li><li data="6000,8000"> <a href="javascript:;">6000-8000￥</a> </li><li data="8000,10000"> <a href="javascript:;">8000-10000￥</a> </li><li data="10000,20000"> <a href="javascript:;">10000-20000￥</a> </li><li data="20000,40000"> <a href="javascript:;">20000-40000￥</a> </li><li data="40000,A"> <a href="javascript:;">40000￥以上</a> </li></ul>
										<div class="am-form-group">
														<label for="user-email" class="am-u-sm-3 am-form-label">
															分类</label>
														<div class="am-u-sm-9">
															<select style="font-size: 18px;" name="category" required="">
																<option>女士上衣</option>
																<option>女士裤装</option>
																<option>女士裙类</option>
																<option>女士套装</option>
																<option>男士上衣</option>
																<option>男士裤装</option>
																<option>男士套装</option>
																<option>女运动装</option>
																<option>男运动装</option>
																<option>其他</option>



															</select> <small>分类</small>
														</div>
													</div>
										
										</div>
										<div class="field field-r fl">
											<i class="icon-person"></i>
											<label>人数：</label>
											<input type="hidden" class="txt section-number section" name="peopleMinCount" readonly="" placeholder="会议最小人数" id="peopleMinCount" data-value="">
             								<input type="hidden" class="txt section-number section" name="peopleMaxCount" readonly="" placeholder="会议最大人数" id="peopleMaxCount" data-value="">
              								<input class="form-control-r form-control demand-number" readonly="readonly" name="check-person" data-value="" type="text">
											<ul style="display: none" class="check-person-box check-box number">
											<li data="A,30"> <a href="javascript:;" title="30人以下">30人以下</a></li><li data="30,60"> <a href="javascript:;" title="30-60人">30-60人</a></li><li data="60,100"> <a href="javascript:;" title="60-100人">60-100人</a></li><li data="100,200"> <a href="javascript:;" title="100-200人">100-200人</a></li><li data="200,300"> <a href="javascript:;" title="200-300人">200-300人</a></li><li data="300,500"> <a href="javascript:;" title="300-500人">300-500人</a></li><li data="500,A"> <a href="javascript:;" title="500人以上">500人以上</a></li></ul>
										</div>
									</div>
									
									<div class="req-item req-longer-item" id="J_reqItems">
										会议需求：
									<input type="checkbox" name="hobby[]" value="开会">开会&nbsp;&nbsp;
									<input type="checkbox" name="hobby[]" value="用餐">用餐&nbsp;&nbsp;
									<input type="checkbox" name="hobby[]" value="住宿">住宿&nbsp;&nbsp;
									<input type="checkbox" name="hobby[]" value="用车">用车&nbsp;&nbsp;
									<input type="checkbox" name="hobby[]" value="搭建">搭建&nbsp;&nbsp;
									<input type="checkbox" name="hobby[]" value="娱乐">娱乐&nbsp;&nbsp;								
									<input type="checkbox" name="hobby[]" value="茶歇">茶歇&nbsp;&nbsp;
									</div>
									
						
															
									<div class="row submit-row" style="margin-top: 64px;">
										<a href="javascript:;" class="next-btn">帮我找场地</a>
									</div>
								</div> -->
									<!-- 第一步 end -->
									<!-- 第二步 begin -->

									<!-- <table border="1" cellpadding="15" align="center">
				<tr>
				  <td style="font-size: 18px;" width="190px;">城市</td>
				  <td>
				  <input style="font-size: 18px; type="text" name="city" value="" class="Required" placeholder="请输入城市"> 
				  
				  <select style="font-size: 18px;" name="city" required="">
																<option>合肥</option>
																<option>南京</option>
																<option>上海</option>
																<option>杭州</option>
																<option>苏州</option>
																<option>北京</option>
																<option>广州</option>
																<option>...</option>
																


															</select>
				  
				  </td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				
				<tr>
				  <td style="font-size: 18px;">类型</td>
				  <td><select style="font-size: 18px;" name="type" required="">
																<option>宴会厅</option>
																<option>会议室</option>
																<option>广场</option>
																<option>礼堂</option>
																<option>主题</option>
																<option>其他</option>
																



															</select></td>
				</tr>
				
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>  <td style="font-size: 18px;">预约时间</td>
				  <td><input type="date" name="time" value="" class="Required" placeholder="开始时间"></td>
				  <td><input type="date" name="time" value="" class="Required" placeholder="结束时间"></td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>
				  <td style="font-size: 18px;">房间价格(￥)</td>
				  <td>
				  <input style="font-size: 18px; type="text" name="money" value="" class="Required" placeholder="请输入预算"> 
				  <select style="font-size: 18px;" name="money" required="">
																<option>500以下</option>
																<option>500~1000</option>
																<option>1000~3000</option>
																<option>3000~5000</option>
																<option>5000~8000</option>
																<option>8000~10000</option>
																<option>10000以上</option>
																


															</select></td>
				</tr>
				<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>
				  <td style="font-size: 18px;">容纳人数</td>
				  <td>
				  <input style="font-size: 18px; type="text" name="num" value="" class="Required" placeholder="请输入人数"> 
				  <select style="font-size: 18px;" name="num" required="">
																<option>10以下</option>
																<option>10~30</option>
																<option>30~50</option>
																<option>50~80</option>
																<option>80~100</option>
																<option>100~150</option>
																<option>150~200</option>
																<option>200以上</option>
																


															</select></td>
				</tr>
				<tr>  
				 <td>会议室图片</td>
				 <td>   <input type="file"  name="pic" id="pic">
				 </td>
                <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="5" id="user-intro" name="info"
																placeholder="输入备注"></textarea></td>
				</tr>
                 
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
          <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
           <tr> <td colspan="2" align="center" width="200px;">
            <input style="font-size: 30px;" type="submit" value="发需求"></td></tr>
    </table> 
						 -->
									<table border="1" cellpadding="15" align="center">
										<tr>
											<td style="font-size: 18px;" width="190px;">城市</td>
											<td>
												<!-- <input type="text" name="city" value="" class="Required" placeholder="请输入所在城市"> -->

												<select style="font-size: 18px;" name="city" required="">
													<option>全部</option>
													<option>合肥</option>
													<option>南京</option>
													<option>上海</option>
													<option>杭州</option>
													<option>苏州</option>
													<option>北京</option>
													<option>广州</option>
													<option>...</option>



											</select>

											</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>

										<tr>
											<td style="font-size: 18px;">类型</td>
											<td><select style="font-size: 18px;" name="type"
												required="">
													<option>全部</option>
													<option>会议室</option>
													<option>宴会厅</option>

													<option>广场</option>
													<option>礼堂</option>
													<option>主题</option>
													<option>其他</option>




											</select></td>
										</tr>

										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">预约时间</td>
											<td><input type="date" name="time" value=""
												class="Required" placeholder="开始时间"></td>
											<!-- <td><input type="date" name="time" value="" class="Required" placeholder="结束时间"></td> -->
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">房间价格(￥)</td>
											<td><select style="font-size: 18px;" name="money"
												required="">
													<option>全部</option>
													<option>200</option>
													<option>500</option>
													<option>1500</option>
													<option>2500</option>
													<option>3500</option>
													<option>4500</option>
													<option>4500以上</option>


											</select></td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td style="font-size: 18px;">容纳人数</td>
											<td><select style="font-size: 18px;" name="num"
												required="">
													<option>全部</option>
													<option>10</option>
													<option>30</option>
													<option>50</option>
													<option>80</option>
													<option>100</option>
													<option>150</option>
													<option>200</option>
													<option>200以上</option>



											</select></td>
										</tr>
										<!-- <tr>  
				 <td>会议室图片</td>
				 <td>   <input type="file"  name="pic" id="pic">
				 </td>
                <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="5" id="user-intro" name="info"
																placeholder="输入备注"></textarea></td>
				</tr> -->

										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										</tr>
										<tr>
											<td colspan="2" align="center" width="200px;"><input
												style="font-size: 30px;" type="submit" value="找场地"></td>
										</tr>
									</table>



								</form>








								<div class="second-step " style="display: none">
									<a href="javascript:;" class="back">&lt;返回上一步修改需求 </a>
									<p class="tip-text">
										您希望<em class="t-actTime">2015年11月20日</em>，在<span
											class="t-city">重庆渝北区</span>，办一次时长为<span class="t-days"></span>天，预算为
										<em class="t-prices">5000元</em>的<span class="t-act">培训会/讲座</span>，届时会有<em
											class="numbers">30人</em>参加。
									</p>
									<div class="bot">
										<p>
											<i class="icon-suona"></i>请留下您的联系方式，我们会有专业的顾问为您策划服务
										</p>
										<div class="row">
											<div class="field">
												<label>&nbsp;&nbsp;&nbsp;&nbsp;手机号码：</label> <input
													type="text" value=""
													class="form-control check-phone m-phone" maxlength="11"
													name="phone">
											</div>
										</div>

										<div class="row">
											<div class="field">
												<label>短信验证码&nbsp;：</label> <input type="text"
													class="form-control sms-code y-code" name="check-phone">
												<a href="javascript:" class="send-code msg-code-btn1">发送验证码</a>
												<input class="loginType" type="hidden">
											</div>
										</div>

										<div class="row submit-row">
											<input type="hidden" name="type" value="FAST_RELEASE">
											<input type="hidden" name="source" value="WEB_HOME">
											<input type="hidden" name="isCounseling" value="T"> <input
												type="button" value="提交" class="btn-submit-btn submit-btn"
												style="left: 0px">
										</div>
									</div>
								</div>
								<!-- 第二步 end -->
								</form>

								<div class="back-info" style="display: none">
									<p class="back-text1">恭喜您，需求发布成功！</p>
									<p class="back-text2">稍后我们的专业顾问会与您联系~</p>
									<p class="title">根据您的需求，我们为您推荐：</p>
									<ul id="demandVenues">

									</ul>
								</div>
							</div>
						</div>
					</dd>
				</dl>
				<dl class="active">
					<dt>


						<h3 style="font-size: 18px;">
							<i style="margin-left: 11px;" class="icon-needstyle"></i>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议服务流程
						</h3>
						<ul class="content">
							<li><span class="icon_order">1</span>&nbsp;&nbsp;&nbsp;网站提交会议需求</li>
							<li><span class="icon_order">2</span>&nbsp;&nbsp;&nbsp;15分钟客服联系确认</li>
							<li><span class="icon_order">3</span>&nbsp;&nbsp;&nbsp;2小时多种报价方案</li>
							<li><span class="icon_order">4</span>&nbsp;&nbsp;&nbsp;预约时间看场地</li>
						</ul>


					</dt>
				</dl>
				<style>
.content li {
	width: 230px;
	padding: 8px 0 8px 0;
	line-height: 35px;
	font-size: 14px;
}

.content li span.icon_order {
	width: 35px;
	height: 35px;
	display: inline-block;
	text-align: center;
	color: #FFF;
	background: url(../templets/hcj/Images/com_1.png) no-repeat;
}
</style>

			</div>
			<ul class="menus">
				<li class="first">会场家为您服务</li>
				<li id="main"><a href="index.jsp">首页</a></li>
				<li class="drop"><a
					href="${pageContext.request.contextPath}/meeting/example"> 热门会场<i
						class="hotNews1"></i>
				</a></li>
				<li class="w65"><a href="${pageContext.request.contextPath}/meeting/getMyNeeds">我的需求</a></li>
				<li class="w65"><a
					href="${pageContext.request.contextPath}/meeting/myOrder">我的预约<i
						class="hotNews"></i></a></li>
				<li><a href="${pageContext.request.contextPath}/meeting/alogin">管理员</a></li>
				<li class="last">服务热线：<img src="./Meeting_files/phone400.jpg"
					alt=""></li>
			</ul>
		</div>
		<div class="line-top hide"></div>
	</div>


	<!-- 首屏 -->
	<!-- slider begin -->
	<script type="text/javascript" src="./Meeting_files/moment.min.js"></script>
	<script type="text/javascript"
		src="./Meeting_files/fullcalendar.min.js"></script>
	<script type="text/javascript" src="./Meeting_files/zh-cn.js"></script>
	<div class="feature-focus" id="feature-focus"></div>
	<!-- slider end -->

	<div class="container">




		<br>


		<!-- 广播台 begin -->

		<div class="radio-bot">
			<div class="radio-l">
				<div class="radio-img fl">
					<a href="#"><img src="./Meeting_files/1-1P2220Z604350-lp.jpg"></a>
				</div>
				<div class="radio-focus fl">
					<h4>
						<a href="#">会议用车会出现哪些问题</a>
					</h4>
					<p>会议策划服务的交通主要指地面交通。地面交通范围较广，包括当地铁路系统、机场接送巴士、酒店免费汽车、常规价和团体价出租车、大型轿车等。
						如果会议有特殊安排，不管是机场...</p>
				</div>


			</div>
			<div class="radio-c">
				<dl>
					<dt>
						<a href="#">8大途径助你找到更好会场</a>
					</dt>
					<dd>活动场地怎么样才能找到最适合的？面对千千万万的场地资源，相信这个是最为困扰我们活动策划者的问题，有位网以多年来会场预订经验，在与场地方、服务商和客户的长期业务沟通...</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">会议签到方式</a>
					</dt>
					<dd>参加会议人员在进入会场一般要签到，会议签到是为了及时、准确地统计到会人数，便于安排会议工作。有些会议只有达到一定人数才能召开，否则会议通过的决议无效。因此，会议签...</dd>
				</dl>


			</div>
			<div class="radio-c">
				<dl>
					<dt>
						<a href="#">会前准备：音响常遇到的</a>
					</dt>
					<dd>一场成功的会议是由无数个小细节组成的，一整套的流程下来不管是再小的细节如果在会议过程中出现，那都不能称之成功，音响作为各类型会议活动不可或缺，但又那么不起眼的物品...</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">大型宴会活动选择场地应</a>
					</dt>
					<dd>每年的年中到年底都会是大中型企业是一个年中总结会和年终会或客户答谢会，而这种类型的企业一般都会是人数较多的，少则上千多则上万也不足为奇。
						订宴会会议场地是一场宴会或...</dd>
				</dl>

			</div>
		</div>
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

	<script type="text/javascript" src="./Meeting_files/laydate.js"></script>

	<!-- <script type="text/javascript" src="http://www.huichangjia.com/templets/hcj/Scripts/slider.js"></script> -->
	<script src="./Meeting_files/home.js"></script>
	<script type="text/javascript" src="./Meeting_files/index.js"></script>
	<script type="text/javascript" src="./Meeting_files/jquery.sochange.js"></script>
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


	<script type="text/javascript" src="./Meeting_files/base64.js"></script>
	<script type="text/javascript" src="./Meeting_files/jquery.cookie.js"></script>
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

	<script src="./Meeting_files/pop-dialog.js"></script>
	<script>
		var currentCitySp = "hengyang";
		var currentCity = "hengyang";
	</script>
	<div id="overlay-layer" class="overlay-layer hide"></div>
	<script type="text/javascript" src="./Meeting_files/commons.js"></script>
	<script type="text/javascript" src="./Meeting_files/jquery.md5.js"></script>
	<script charset="utf-8" src="./Meeting_files/wpa.js"></script>

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
	<script src="./Meeting_files/h.js" type="text/javascript"></script>


	<script src="./Meeting_files/venue-list.js"></script>
	<script type="text/javascript" src="./Meeting_files/pop-login.js"></script>
	<script type="text/javascript"
		src="./Meeting_files/jquery.validationengine-zh_cn.js"></script>
	<script type="text/javascript"
		src="./Meeting_files/jquery.validationengine.js"></script>
	<script src="./Meeting_files/datepicker_v1.js"></script>
	<script src="./Meeting_files/script_v1.js"></script>

</body>
</html>