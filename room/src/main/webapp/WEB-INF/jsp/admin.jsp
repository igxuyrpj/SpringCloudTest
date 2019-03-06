<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="../ikhuxtyr_files/hm.js"></script>
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>巢湖学院</title>

<link type="text/css" href="../ikhuxtyr_files/system.css" rel="stylesheet">
<link type="text/css" href="../ikhuxtyr_files/1.css" rel="stylesheet">
<link type="text/css" href="../ikhuxtyr_files/6.css" rel="stylesheet">
       <link href="../ikhuxtyr_files/system(1).css" type="text/css" rel="stylesheet"> 
       <link href="../ikhuxtyr_files/default.css" type="text/css" rel="stylesheet"> 
<link type="text/css" href="../ikhuxtyr_files/simplenews.css" rel="stylesheet">
<link type="text/css" href="../ikhuxtyr_files/datepicker.css" rel="stylesheet">
<link type="text/css" href="../ikhuxtyr_files/sudyNav.css" rel="stylesheet">

<script language="javascript" src="../ikhuxtyr_files/jquery.min.js" sudy-wp-context="" sudy-wp-siteid="5"></script>
<script language="javascript" src="../ikhuxtyr_files/jquery.sudy.wp.visitcount.js"></script>
<script type="text/javascript" src="../ikhuxtyr_files/jquery.datepicker.js"></script>
<script type="text/javascript" src="../ikhuxtyr_files/datepicker_lang_HK.js"></script>
<script type="text/javascript" src="../ikhuxtyr_files/jquery.sudyNav.js"></script>
<script type="text/javascript" src="../ikhuxtyr_files/winfloat.js"></script>
<link href="../ikhuxtyr_files/base.css" rel="stylesheet">
<link href="../ikhuxtyr_files/media.css" rel="stylesheet">

<!-- 
 <link href="../css/reset.css" rel="stylesheet" />
  <link href="../css/public.css" rel="stylesheet" />
  <link href="../css/index.css" rel="stylesheet" /> -->
<script type="text/javascript" src="../ikhuxtyr_files/extends.js"></script><link rel="stylesheet" type="text/css" href="../ikhuxtyr_files/extends.css"><script type="text/javascript" src="../ikhuxtyr_files/jquery.sudy.js"></script>
<script src="../ikhuxtyr_files/self.js"></script>



 <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<!-- <script type="text/javascript" src="../js/back-endPage.js"></script> --> <!-- 后台分页 -->
    <script type="text/javascript" src="../js/front-endPage.js"></script><!-- 前台分页 -->
    <script type="text/javascript" src="js/shujv2.js"></script>
	

	
<!--[if lt IE 9]>
	<script src="/_upload/tpl/00/6d/109/template109/extends/libs/html5.js"></script>
	<link href="/_upload/tpl/00/6d/109/template109/css/ie.css" rel="stylesheet">
<![endif]-->

<!--[if lt IE 7]>
	<script src="/_upload/tpl/00/6d/109/template109/extends/libs/pngfix.js"></script>
	<script type="text/javascript">
		DD_belatedPNG.fix('.site-logo,.search-submit')
	</script>
<![endif]-->
  
  <style type="text/css">
 /* *{margin:0;padding:0;list-style-type:none;}  */
/* a,img{border:0;} */
 /* .body{font:12px Arial, Helvetica, sans-serif, "新宋体";} */ */
/* filter */
#filter{width:900px;height:180px;margin-left:170px;font-size:18px;}
#filter dl{clear:both;padding:4px 0;}
#filter dt,dd{display:block;float:left;width:auto;padding:0;margin:3px 0;}
#filter dt{height:14px;padding-bottom:2px;font-weight:bold;color:#333333;}
#filter dd{color:#005AA0;margin-right:8px;}
#filter a{cursor:pointer;}
.seling{background-color:#005AA0;color:#FFFFFF;}
.seled{background-color:#005AA0;color:#FFFFFF;}
</style>
<script type="text/javascript">

function del(){ 
	  if(!confirm("确认要删除？")){ 
	  window.event.returnValue = false; 
	  } 
	  }

</script>
</head>
<body class="wp-main-page">

<!--头部开始-->
<header class="wp-wrapper wp-header">
  <div class="wp-inner clearfix"> 
    
    <!--logo开始-->
    <div class="wp-panel logo-panel panel-1" frag="面板1"> <a class="navi-aside-toggle navi-aside-toggle-show"></a>
      <div class="wp-window logo-window window-1" frag="窗口1" portletmode="simpleSiteAttri">
        <a class="site-url" href="#"><img class="site-logo" src="../ikhuxtyr_files/logo.png"></a>
      </div>
    </div>
    <!--//logo结束--> 
    
   
    
    <!--搜索开始-->
    <div class="wp-panel search-panel panel-3" frag="面板3">
      <div class="wp-window search-window window-3" frag="窗口3" portletmode="search">
        <div class="wp-search clearfix">
            <form method="post" action="#" >
              <div class="search-input">
                <input class="search-title" name="keyword" type="text" placeholder="搜索...">
              </div>
              <div class="search-btn">
                <input class="search-submit" name="submit" type="submit" value="">
              </div>
            </form>
          </div>
      </div>
       <div style="margin-top: 16px;color: white;font-size: 18px;">欢迎您:${name }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
      <a style="color: white;font-size: 18px;" href="../login.jsp">登录</a>
      <a style="color: white;font-size: 18px;" href="${pageContext.request.contextPath}/logOut">退出</a>
      </div>
    </div>
    <!--//搜索结束--> 
    
   
  </div>
</header>
<!--//头部结束--> 

<!--导航开始-->
<nav class="wp-wrapper wp-navi">
  <div class="wp-inner clearfix">
    <div class="wp-panel main-nav-panel panel-5" frag="面板5">
      <div class="wp-window main-nav-window window-5" frag="窗口5" >
        
          <div class="navi-slide-head">
            <h3 class="navi-slide-title">导航</h3>
            <a class="navi-slide-arrow"></a> </div>
          
          <ul style="margin-right: 40px; width: 580px;" class="wp-menu clearfix" data-nav-aside="{&quot;title&quot;:&quot;导航&quot;,&quot;index&quot;:0}">
            <li class="menu-item i1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
            </li>
             <li class="menu-item i1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
            </li>
            <li class="menu-item i1"><a class="menu-link" href="../index.jsp" target="_self">首页</a> 
                </li>
             <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/getRooms" target="_self">已预约教室</a> 
               
            </li>
           
            <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/getRoom" target="_self">教室管理</a> 
               
           
            </li> 
             <%-- <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/personal" target="_self">个人中心</a> 
               
            </li> --%>
              <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/admin">人员管理</a> 
               
            </li>
       </ul>
           
        
      </div>
    </div>
  </div>
</nav>




<div style="margin-bottom: 30px;">

		<c:if test="${empty requestScope.lists }">
<h3>没有找到相关信息！</h3>
</c:if>
  <c:if test="${!empty requestScope.lists }">
    <table border="1"  cellpadding="7" align="center" style="margin: 20px auto;text-align: center; width: 90%;">
    <tr>
        <th height="30px;">序号</th>
        <th>学校名称</th>
        <th>系别</th> 
         <th>专业</th> 
        <th>姓名</th>
         <th>学号</th>
          <th>班级</th>
           <th>性别</th>          
            <th>联系方式</th>
              <th>年龄</th>
              <th colspan="2">操作</th>
    </tr>
      <c:forEach items="${requestScope.lists }" var="stu">
      <tr>
           <td height="25px;">${stu.id }</td>
         <td>${stu.school }</td>
          <td>
         ${stu.college }
         </td>
          <td>${stu.major }</td>
           <td>${stu.name }</td>
            <td>${stu.num }</td>
             <td>${stu.class1 }</td>
             <td>${stu.sex }</td>
            <td>${stu.phone }</td>
             <td>${stu.age }</td>
             
            <td><a href="${pageContext.request.contextPath }/chinaren/update/${stu.id }">编辑</a></td>
             <td><a href="${pageContext.request.contextPath }/chinaren/delete/${stu.id }" onclick="return del()">删除</a></td>
           
      </tr>
    <%--   	<!-- 删除弹出框 -->
	<div class="banDel">
		<div class="delete">
			<div class="close">
				<a><img src="../img/shanchu.png" /></a>
			</div>
			<p class="delP1">你确定要删除此条记录吗？</p>
			<p class="delP2">
				<a href="${pageContext.request.contextPath }/videos/delete/${emp.id }" class="ok yes">确定</a><a class="ok no">取消</a>
			</p>
		</div>
	</div>
	<!-- 删除弹出框  end-->
      
       --%>
      </c:forEach>
       
    </table>
   
  <%-- <div style="height:50px;width:80px">
					<a style="display: inline-block;width: 160px;height: 40px;background-color: #47a4e1;line-height: 35px;text-align: center;color: #fff;margin-top: 5px;margin-left: 20px;font-size: 16px;text-decoration: none;" href="${pageContext.request.contextPath }/banner.jsp">返回&nbsp;&nbsp;+</a>
				</div> --%>
  
  </c:if>


</div>
	


<!--底部开始-->
<footer class="wp-wrapper wp-footer">
  <div class="wp-inner clearfix">
    <div class="foot_l"><img src="../ikhuxtyr_files/sydw.png">
      <p>版权所有 巢湖学院 Copyright © Chaohu university All rights reserved.</p>
      <p>校址：安徽省合肥巢湖经济开发区  邮政编码：238000 皖ICP备05018249号</p>
    </div>
    <div class="foot_r">
      <div class="f_r_peo" frag="面板15">
        <div frag="窗口15">
          <div class="articlecontent ">
    
        
            
                <style type="text/css">.wp_editor_art_table td{border:0 !important; background:none !important; color:#fff;}.wp_editor_art_table{margin-bottom:0 !important;}</style><table class="wp_editor_art_table" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><p style="text-align:center;"><img data-layer="photo" src="../ikhuxtyr_files/f83ddbf3-f91b-4606-a96d-ba7a07a9d8ae.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wzewm.jpg&#39;}" original_name="emm.jpg"></p></td><td><p style="text-align:center;"><img data-layer="photo" src="../ikhuxtyr_files/4c99581a-6a7f-43f0-aa57-3eb5ab165c3f.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wzewm.jpg&#39;}"></p></td><td><p style="text-align:center;"><img data-layer="photo" src="../ikhuxtyr_files/d87e10f4-44f5-4adb-b089-307cc6f34898.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wxewm.jpg&#39;}"></p></td><td><br></td></tr><tr><td style="text-align:center;">移动校园</td><td style="text-align:center;">网站二维码</td><td style="text-align:center;">微信二维码<br></td><td style="text-align:center;"><br></td></tr></tbody></table>
            
        
    
</div>
        </div>
      </div>
      <div class="f_r_le"><img src="../ikhuxtyr_files/gaba.png"><span>皖公网安备 34018102340270号</span></div>
    </div>
  </div>
</footer>
<!--//底部结束-->


<script type="text/javascript" src="../ikhuxtyr_files/app.js"></script>
<script type="text/javascript">
$(function(){
	// 初始化SDAPP
	new SDAPP({
		"menu":{
			type:"aside"
		}
	});
});


</script>

 <img src="../ikhuxtyr_files/_visitcount" style="display:none" width="0" height="0"></body></html>