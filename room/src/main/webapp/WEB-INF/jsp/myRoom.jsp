<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
<!-- 	<link rel="stylesheet" type="text/css" href="../css/table.css"> -->
	
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
	  if(!confirm("是否确定取消预约？")){ 
	  window.event.returnValue = false; 
	  } 
	  } ;
	 
	  
	  $(function(){
	 
  
	  if($("#className").val()=="") {
		  $('#butt').hide();
		 
		 /*  $('#butt').attr({"disabled":"disabled"}); */
	  }else{
		  /* $("#butt").removeAttr("disabled"); */ 
		 
		  $('#butt').show();
	  }
	  });
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
          
          <ul style="margin-right: 40px; width: 552px;" class="wp-menu clearfix" data-nav-aside="{&quot;title&quot;:&quot;导航&quot;,&quot;index&quot;:0}">
            <li class="menu-item i1"><a class="menu-link" href="../index.jsp" target="_self">首页</a> 
               
            </li>
           
            <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/Creservation" target="_self">教室预约</a> 
               
            </li>
             <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/myRoom" target="_self">我的预约</a> 
               
            </li>
             <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/personal" target="_self">个人中心</a> 
               
            </li>
              <li class="menu-item i1"><a class="menu-link" href="../login.jsp" target="_self">管理员</a> 
               
            </li>
       </ul>
           
        
      </div>
    </div>
  </div>
</nav>





	
		
<div style="margin-left: 20px;margin-top: -11px;background-image:url('../imgs/3.jpg');">
   <form action="${pageContext.request.contextPath }/chinaren/index" method="post">
	<table border="1" width="375px" height="400px" style="text-align: center;margin-left: 480px;">
			<tr>
				<td style="font-weight:bolder;" width="80px;">编号</td>
				<%-- <td><label>${emp.id}  </label></td> --%>
				 <td><input style="height:25px;text-align: center;  " id="id" type="text" name="id" value="${room.id }"></td> 
			</tr>
			<tr>
				<td style="font-weight:bolder;" width="80px;">学号</td>
				<%--<td><label>${emp.num }  </label></td>--%>
				 <td><input style="height:25px;text-align: center;  " id="id" type="text" name="num" value="${room.num }"></td> 
			</tr>
			<tr>
				<td style="font-weight:bolder;">用户姓名</td>
				<%-- <td><label>${emp.name}  </label></td>--%>
				<td><input  style="height:25px;text-align: center;  "  id="name"  type="text" name="stuName" value="${room.stuName}"></td> 
			</tr>
			 
			<tr>
				<td style="font-weight:bolder;"> 教学楼</td>
				<%-- <td><label>${emp.major}</label></td>--%>
				<td><input  style="height:25px;text-align: center;  "  id="className"  type="text" name="className" value="${room.className}"></td> 
			</tr>
			<tr>
				<td style="font-weight:bolder;"> 楼层</td>
				<%--<td><label>${emp.college}</label></td> --%>
				 <td><input  style="height:25px;text-align: center;  "  id="userpassword"  type="text" name="floor" value="${room.floor}"></td>
			</tr>
			<tr>
				<td style="font-weight:bolder;">班级号码</td>
				<%-- <td><label>${emp.class1}</label></td> --%>
				<td><input  style="height:25px; text-align: center; "  id="userpassword"  type="text" name="classNo" value="${room.classNo}"></td>
			</tr>
			<tr>
				<td style="font-weight:bolder;"> 日期</td>
				<td><label>${room.date}</label></td> 
				<%--  <td><input  style="height:25px;text-align: center;  "  id="userpassword"  type="text" name="floor" value="${room.floor}"></td> --%>
			</tr>
			<tr>
				<td style="font-weight:bolder;">时间</td>
				 <td><label>${room.datepicker}</label></td> 
				<%--<td><input  style="height:25px; text-align: center; "  id="userpassword"  type="text" name="classNo" value="${room.classNo}"></td>--%>
			</tr>

				<td colspan="2">
		
					
					<input style="width: 64px;height: 30px;"  type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <button id="butt"  onclick="return del()" style="width: 64px;height: 30px; text-decoration: none;" ><a href="${pageContext.request.contextPath }/chinaren/delMyRoom/${room.id }?className="+${room.className }>删除预约</a></button>
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				
			</tr>
	</table>
</form>
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