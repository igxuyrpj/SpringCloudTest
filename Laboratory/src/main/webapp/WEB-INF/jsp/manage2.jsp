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
	<script type="text/javascript">
	function del(){ 
		  if(!confirm("确认要删除？")){ 
		  window.event.returnValue = false; 
		  } 
		  };

		  window.onload = function(){
				 document.getElementById("s").onchange=function(){
						// var f = document.getElementById("f");
						var index = this.selectedIndex;
						var pnumber = this.options[index].value;
						//f.action="/web_day_16/pager.do?pagesize=5&pageindex=" + pnumber;
						//f.submit(); 
						window.location.href="${pageContext.request.contextPath}/route/get1?pc="+pnumber;
						
					
					} 
					
					}
	
	</script>
		
		<style type="text/css">
		 #table2{width: 800px;height:40px;position:absolute;bottom:50px;
 left:300px;}
		
		</style>
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
						<%-- <li >
							<a href="../index.jsp">实验室概述</a>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/route/products">项目展示</a>
						</li>
						 --%>
						<li>
							<a href="${pageContext.request.contextPath}/route/getFiles">管理文档</a>
						</li>
						
						<li class="active hidden-xs">
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
			
		</div>
		<!--banner-->
		
		<!--main-->

		<div class="abpg container">
		
		
		
			<div>
				
				<div class="serli">
				
				
				
				
				<div style="width:80%;margin: 0 auto;">
			<%-- <c:if test="${empty requestScope.lists }">
				<h2>没有任新闻信息！</h2>
			</c:if>
			<c:if test="${!empty requestScope.lists }"> --%>
				<table  cellpadding="5" align="center" width="100%">

					<tr>
						<th><h4>编号</h4></th>
						<th><h4>新闻</h4></th>
						<th ><h4>新闻标题</h4></th>
						<th style="width: 220px;"><h4>新闻内容</h4></th>
						<th style="width: 220px;"><h4>上传时间</h4></th>
						
						<th><h4>操作</h4></th>
						<th><h4>操作</h4></th>
					</tr>
					
					
					
					<c:forEach items="${requestScope.pb.beanList }" var="emp">
						<tr>
						<td>${emp.id }</td>
							
							<td><c:if test="${emp.pic!=null}">
									<a href="#"><img src="${emp.pic}" width="60" height="40" /></a>
								</c:if></td>
							<td>${emp.title }</td>
							<td style="width:100px;overflow:hidden;white-space:nowrap;word-break:keep-all;">${emp.info}</td>
							<td>${emp.date }</td>
							
							    
            <td><a href="${pageContext.request.contextPath }/route/updateNews/${emp.id }">编辑</a></td>
             <td><a href="${pageContext.request.contextPath }/route/delNews/${emp.id }" onclick="return del()">删除</a></td>
           
						</tr>
                       <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>

					</c:forEach>

				</table>
				

		<%-- 	</c:if> --%>










<div id="table2">
第${pb.pc}页/共${pb.tp }页
  <a href="<c:url value='/route/get1?pc=1'/>">首页</a>
  <c:if test="${pb.pc>1 }">
   <a href="<c:url value='/route/get1?pc=${pb.pc-1 }'/>">上一页</a>
</c:if>
<%--计算页码 --%>
<c:choose>
<%--若总页数不足10页，那么都显示出来 --%>
   <c:when test="${pb.tp<=10 }">
     <c:set var="begin" value="1"/>
     <c:set var="end" value="${pb.tp}"/>
   
   </c:when>
  
   <c:otherwise>
   <%--若总页数大于10，通过公式计算begin，end --%>
   <c:set var="begin" value="${pb.pc-5}" />
   <c:set var="end" value="${pb.pc+4}" />
       <%--头溢出 --%>
   <c:if test="${begin<1 }">
     <c:set var="begin" value="1"></c:set>
     <c:set var="end" value="10"></c:set>
   </c:if>
      <%--尾溢出 --%>
    <c:if test="${end>pb.tp }">
     <c:set var="begin" value="${pb.tp-9}"></c:set>
     <c:set var="end" value="${pb.tp }"></c:set>      
   </c:if>
   
   </c:otherwise>
</c:choose>
<%--循环遍历列表 --%>
<c:forEach var="i" begin="${begin }" end="${end }">
<c:choose>
  <c:when test="${i eq pb.pc }">
  [${i }]
  </c:when>
  <c:otherwise>
    <a href="<c:url value='/route/get1?pc=${i}'/>">[${i }]</a>
  </c:otherwise>
</c:choose>

</c:forEach>


<c:if test="${lists.pc<pb.tp }">
  <a href="<c:url value='/route/get1?pc=${pb.pc+1 }'/>">下一页</a>
</c:if>
<%--下拉框 --%>
<select id="s">
  <c:forEach begin="1" var="i" end="${pb.tp }">
 <a href="<c:url value='/route/get1?pc=${i }'/>">${i }</a>
 <!-- 
  <option value="<a href='<c:url value='/route/get1?pc=${i }'/>'>${i }</a>" <c:if test="${i eq pb.pc }">  selected="selected"</c:if> >${i } </option>
   -->
   <option value="${i }" <c:if test="${i eq pb.pc }">  selected="selected"</c:if> >
${i }
 </option>
  </c:forEach>
 
</select>


  <a href="<c:url value='/route/get1?pc=${pb.tp }'/>">尾页</a>

</div>
			
			
			
			
			
			
			
			
			
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