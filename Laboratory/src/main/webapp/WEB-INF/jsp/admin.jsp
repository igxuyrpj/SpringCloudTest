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
					<a href="index.html">
						<h1>实验室</h1>
						<p>Laboratory</p>
					</a>
				</div>
				
				<div class="nav-list"><!--class="collapse navbar-collapse" id="bs-example-navbar-collapse"-->
					<ul class="nav navbar-nav">
						<!-- <li >
							<a href="../index.jsp">实验室概述</a>
						</li>
						 -->
						
						<li>
							<a href="${pageContext.request.contextPath}/route/getFiles">管理文档</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/getNews">管理新闻</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/route/get1?pc=1">分页新闻</a>
						</li>
						<li class="active hidden-xs">
							<a href="${pageContext.request.contextPath}/route/admin">上传文件</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="fl hidden-lg hidden-md hidden-sm">
			
		</div>
		<!--banner-->
		
		<!--main-->

		<div class="abpg container">
			<div>
				
				<div class="serli">
					
				<div style="margin-left: 100px;">

           <hr>
           <!-- ${pageContext.request.contextPath } -->
        <form  id="upload" method="post" action="${pageContext.request.contextPath }/route/upload" enctype="multipart/form-data">
           <table  cellpadding="5" align="center" height="300px;">
				
				
				<tr>  
				 <td style="font-size: 18px;text-align:center;">上传文件</td>
				 <td>   <input  type="file"  name="pic" id="pic">
				 </td>
				 </tr>
				 <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                <tr>
				  <td style="font-size: 18px;text-align:center;">文件标题</td>
				  <td><textarea style="font-size: 18px;width: 280px;"   rows="2" id="user-intro" name="title"
																placeholder="输入标题"></textarea></td>
				</tr>
				 <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
				<tr>
				  <td style="font-size: 18px;text-align:center;">文件类型(1:图片,2:文档)</td>
				  <td><select style="font-size: 18px;width: 280px;" name="type" required="">
																<option>1</option>
																<option>2</option>
															</select>
															</td>
				</tr>
				 <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                <tr>
				  <td style="font-size: 18px;text-align:center;">信息</td>
				  <td><textarea style="font-size: 18px;width: 280px;"   rows="5" id="user-intro" name="info"
																placeholder="输入信息"></textarea></td>
				</tr>
                  <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
        <!--  <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr> -->
           <tr> <td colspan="2" align="center">
           
            <input style="font-size: 18px;width: 120px;"  type="submit" value="上传">
           
           
            </td>
            </tr>
    </table> 
     
          </form>
       
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