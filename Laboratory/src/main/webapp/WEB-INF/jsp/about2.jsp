<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/main.css" />
		
		<link rel="stylesheet" href="../css/easy-upload.css">
		<script type="text/javascript">
	function del(){ 
		  if(!confirm("确认要删除？")){ 
		  window.event.returnValue = false; 
		  } 
		  };

	
	
	</script>
		
		
		
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
						<%-- <li>
							<a href="../index.jsp">实验室概述</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/news">科创新闻</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/products">项目展示</a>
						</li> --%>
						<li class="active hidden-xs">
							<a href="${pageContext.request.contextPath}/route/getFiles">管理文档</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/getNews">管理新闻</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/admin">上传文件</a>
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
					<a href="tel:0512-57995109" >
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
		
			
		
		<!--main-->
		
		<div class="abpg container">
			<div class="">
				<!--<div class="col-md-3">
					<div class="model-title theme">
						关于我们
					</div>
					<div class="model-list">
						<ul class="list-group">
							<li class="list-group-item ">
								<a href="about.jsp">关于蓝海</a>
							</li>
						</ul>
					</div>
				</div>-->
				<div class="col-md-12 serli">
					<ol class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i><a href="../index.jsp">主页</a></li>
						<li class="active">管理文档</li>
					</ol>
					<div class="abdetail">
						
				<div style="width:80%;margin: 0 auto;">
			<c:if test="${empty requestScope.lists }">
				<h2>没有任何文档信息！</h2>
			</c:if>
			<c:if test="${!empty requestScope.lists }">
				<table  cellpadding="5" align="center" width="100%">

					<tr>
						<th><h4>编号</h4></th>					
						<th style="width: 400px;"><h4>文档</h4></th>					
						<th style="width: 220px;"><h4>上传时间</h4></th>
						
						
						<th><h4>操作</h4></th>
					</tr>
					<c:forEach items="${requestScope.lists }" var="emp">
						<tr>
						<td>${emp.id }</td>		
							<td>${emp.pic }</td>
							<td>${emp.date }</td>						
							    
            
             <td><a href="${pageContext.request.contextPath }/route/delNews/${emp.id }" onclick="return del()">删除</a></td>
           
						</tr>
                       <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>

					</c:forEach>

				</table>
				

			</c:if>





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