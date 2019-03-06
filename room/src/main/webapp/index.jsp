<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="./ikhuxtyr_files/hm.js"></script>
<meta name="viewport" content="width=device-width,user-scalable=0,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>巢湖学院</title>

<link type="text/css" href="./ikhuxtyr_files/system.css" rel="stylesheet">
<link type="text/css" href="./ikhuxtyr_files/1.css" rel="stylesheet">
<link type="text/css" href="./ikhuxtyr_files/6.css" rel="stylesheet">
       <link href="./ikhuxtyr_files/system(1).css" type="text/css" rel="stylesheet"> 
       <link href="./ikhuxtyr_files/default.css" type="text/css" rel="stylesheet"> 
<link type="text/css" href="./ikhuxtyr_files/simplenews.css" rel="stylesheet">
<link type="text/css" href="./ikhuxtyr_files/datepicker.css" rel="stylesheet">
<link type="text/css" href="./ikhuxtyr_files/sudyNav.css" rel="stylesheet">
<!--  sudy-wp-context="" sudy-wp-siteid="5" -->
 <script language="javascript" src="./ikhuxtyr_files/jquery.min.js"></script>
<!-- <script language="javascript" src="./ikhuxtyr_files/jquery.sudy.wp.visitcount.js"></script> -->
<!-- <script type="text/javascript" src="./ikhuxtyr_files/jquery.datepicker.js"></script> -->
<!-- <script type="text/javascript" src="./ikhuxtyr_files/datepicker_lang_HK.js"></script> -->
<!-- <script type="text/javascript" src="./ikhuxtyr_files/jquery.sudyNav.js"></script> -->
<!-- <script type="text/javascript" src="./ikhuxtyr_files/winfloat.js"></script> -->
<link href="./ikhuxtyr_files/base.css" rel="stylesheet">
<link href="./ikhuxtyr_files/media.css" rel="stylesheet">
 <script type="text/javascript" src="./ikhuxtyr_files/extends.js"></script>
<link rel="stylesheet" type="text/css" href="./ikhuxtyr_files/extends.css">
<script type="text/javascript" src="./ikhuxtyr_files/jquery.sudy.js"></script> 
<script src="./ikhuxtyr_files/self.js"></script>
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
</head>
<body class="wp-main-page">

<!--头部开始-->
<header class="wp-wrapper wp-header">
  <div class="wp-inner clearfix"> 
    
    <!--logo开始-->
    <div class="wp-panel logo-panel panel-1" frag="面板1"> <a class="navi-aside-toggle navi-aside-toggle-show"></a>
      <div class="wp-window logo-window window-1" frag="窗口1" portletmode="simpleSiteAttri">
        <a class="site-url" href="#"><img class="site-logo" src="./ikhuxtyr_files/logo.png"></a>
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

      <a style="color: white;font-size: 18px;" href="login.jsp">登录</a>
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
            
            <li class="menu-item i1"><a class="menu-link" href="index.jsp" target="_self">首页</a> 
               
            </li>
            
            <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/Creservation" target="_self">教室预约</a> 
               
            </li>
             <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/myRoom" target="_self">我的预约</a> 
               
            </li>
             <li class="menu-item i1"><a class="menu-link" href="${pageContext.request.contextPath}/chinaren/personal" target="_self">个人中心</a> 
               
            </li>
             <li class="menu-item i1"><a class="menu-link" href="login.jsp" target="_self">管理员</a> 
               
            </li>
            
            
            
            
           
            
            
            
               
          </ul>
           
        
      </div>
    </div>
  </div>
</nav>

<!--//导航结束--> 
<!--大图开始-->
<div class="wp-wrapper wp-focus">
  <div class="wp-panel fcous-panel panel-6" frag="面板6">
    <div class="wp-window focus-window window-6" frag="窗口6">
       
        <script type="text/javascript">
				var w55imgJsons = [
				
				{
				title:"轮播图",
				src:"<a href='#' title='轮播图'><img src='./ikhuxtyr_files/6ae68415-3662-4b78-ae77-1c6a57f4b32a.jpg' width='640'></a>",
				text:"<a href='#' title='轮播图'></a>"
				},
				
				{
				title:" 轮播图",
				src:"<a href='#' title=' 轮播图'><img src='./ikhuxtyr_files/cede5e1c-adf8-461e-8cc6-11e423aa44d1.jpg' width='640'></a>",
				text:"<a href='#'  title=' 轮播图'></a>"
				},
				
				{
				title:"轮播图",
				src:"<a href='#'title='轮播图'><img src='./ikhuxtyr_files/d84873e2-321b-458d-9ed4-09943a7b15bf.jpg' width='640'></a>",
				text:"<a href='#' title='轮播图'></a>"
				},
				
				{
				title:"轮播图",
				src:"<a href='#' title='轮播图'><img src='./ikhuxtyr_files/a0d97c42-59a0-457d-bf90-2e830db0e3b2.jpg' width='640'></a>",
				text:"<a href='#' title='轮播图'></a>"
				},
				
				{
				title:"轮播图",
				src:"<a href='#' title='轮播图'><img src='./ikhuxtyr_files/fbc966c0-d49a-4271-bf2c-b6639b7d93d2.jpg' width='640'></a>",
				text:"<a href='#' title='轮播图'></a>"
				},
				
				{
				title:"轮播图",
				src:"<a href='#' title='轮播图'><img src='./ikhuxtyr_files/61933fd2-1978-4189-8d7f-8fa28f853f04.jpg' width='640'></a>",
				text:"<a href='#' title='轮播图'></a>"
				},
				
				{}
				];
				w55imgJsons.pop();
                </script>
        <div id="focus" class="focus-box" style="width: 1349px; height: 355.799px;">
       
        </div>
      
    </div>
  </div>
</div>
<!--//大图结束--> 

<!--主体开始-->
<div class="wp-wrapper wp-container">
  <div class="wp-inner clearfix">
    <div class="mod_l" frag="面板7">
      <div frag="窗口7">
        
          <div class="sudy-scroll" id="scroll-1521448755278" style="width: 330px; height: 281px;"><div class="sudy-scroll-wrap" style="width: 330px; height: 281px;"><ul class="scroll" style="width: 1980px; height: 281px; position: absolute; left: -1645.83px; top: 0px;">
            
            <li class="s_fous s_1" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="校园植树催春意 播绿添彩引春风 巢湖学院开展春季义务植树活动"><img src="./ikhuxtyr_files/a2314669-d514-4525-bd5c-932ffdc413eb_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="校园植树催春意 播绿添彩引春风 巢湖学院开展春季义务植树活动">校园植树催春意 播绿添彩引春风 巢湖学院开展春季义务植树活动</a></p>
            </li>
            
            <li class="s_fous s_2" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="省委综合考核组第21组来巢湖学院进行实地考核"><img src="./ikhuxtyr_files/2f60c8ff-1a0c-47e6-8d3b-502cf6c9bc1b_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="省委综合考核组第21组来巢湖学院进行实地考核">省委综合考核组第21组来巢湖学院进行实地考核</a></p>
            </li>
            
            <li class="s_fous s_3" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="巢湖学院举行“三八红旗手”表彰会暨“三八妇女节”座谈会"><img src="./ikhuxtyr_files/2b74566c-80fd-460d-950a-4f5f71429fdf_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="巢湖学院举行“三八红旗手”表彰会暨“三八妇女节”座谈会">巢湖学院举行“三八红旗手”表彰会暨“三八妇女节”座谈会</a></p>
            </li>
            
            <li class="s_fous s_4" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="校党委中心组传达学习党的十九届三中全会精神"><img src="./ikhuxtyr_files/553f5c17-6f55-470a-b24a-a0a93876cd89_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="校党委中心组传达学习党的十九届三中全会精神">校党委中心组传达学习党的十九届三中全会精神</a></p>
            </li>
            
            <li class="s_fous s_5" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="巢湖学院召开2018年春学期开学工作会议"><img src="./ikhuxtyr_files/2a3c7120-3e01-48e5-b915-51430a2fba0c_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="巢湖学院召开2018年春学期开学工作会议">巢湖学院召开2018年春学期开学工作会议</a></p>
            </li>
            
            <li class="s_fous s_6" style="width: 330px; height: 281px; float: left; display: inline-block;">
              <div class="thum"><a href="#"  title="拥抱新时代 谱写新篇章 巢湖学院举办2018年元旦文艺晚会"><img src="./ikhuxtyr_files/291fb1bd-e6b8-4ce9-ab3f-48b4bb2f3fdc_s.jpg" width="320"></a></div>
              <p class="caption"><a href="#"  title="拥抱新时代 谱写新篇章 巢湖学院举办2018年元旦文艺晚会">拥抱新时代 谱写新篇章 巢湖学院举办2018年元旦文艺晚会</a></p>
            </li>
            
          </ul></div><div class="sudy-scroll-nav"><a href="javascript:;" class="nav-prev">&lt;</a><a href="javascript:;" class="nav-next">&gt;</a></div></div>
        
      </div>
    </div>
    <div class="mod_r">
      <div class="m_top">
        <div class="m_tab sudy-tab">
          <ul class="tab-menu">
            <li class="nav0"><a href="#">学校新闻</a></li>
            <li class="nav1"><a href="#">通知公告</a></li>
            <li class="nav2"><a href="#">教学信息</a></li>
            <li class="nav3 selected"><a href="#">学术信息</a></li>
          </ul>
          <ul class="tab-list" style="position:relative;">
            <li class="" style="display: none;">
              <div frag="面板8">
                <div frag="窗口16">
                  
                    <ul class="clearfix">
                      
                      <li class="tab-news t_1"><span class="tab-title"><a href="#"  title="巢湖学院召开专题会议安排部署学校安全稳定工作">巢湖学院召开专题会议安排部署学校安全稳定工作</a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_2"><span class="tab-title"><a href="#"  title="副校长朱定秀主持召开《环巢湖文化塑校育人实施方案》讨论会">副校长朱定秀主持召开《环巢湖文化塑校育人实施方案》讨论会</a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_3"><span class="tab-title"><a href="#"  title="巢湖学院举办“华为杯”网络与分布式系统创新设计大赛研讨会">巢湖学院举办“华为杯”网络与分布式系统创新设计大赛研讨会</a></span> <span class="tab-time"> 2018-03-15</span></li>
                      
                      <li class="tab-news t_4"><span class="tab-title"><a href="#"  title="合肥市社科联、合肥巢湖文化研究会来我校调研">合肥市社科联、合肥巢湖文化研究会来我校调研</a></span> <span class="tab-time"> 2018-03-15</span></li>
                      
                      <li class="tab-news t_5"><span class="tab-title"><a href="#"  title="副校长朱定秀一行参加马克思主义理论重点建设学科推进会">副校长朱定秀一行参加马克思主义理论重点建设学科推进会</a></span> <span class="tab-time"> 2018-03-15</span></li>
                      
                      <li class="tab-news t_6"><span class="tab-title"><a href="#"  title="机关一总支十三支部召开组织生活会">机关一总支十三支部召开组织生活会</a></span> <span class="tab-time"> 2018-03-14</span></li>
                      
                      <li class="tab-news t_7"><span class="tab-title"><a href="#"  title="校党委书记朱灿平一行赴铜陵学院考察调研">校党委书记朱灿平一行赴铜陵学院考察调研</a></span> <span class="tab-time"> 2018-03-14</span></li>
                      
                      <li class="tab-news t_8"><span class="tab-title"><a href="#"  title="副校长朱定秀赴外国语学院调研">副校长朱定秀赴外国语学院调研</a></span> <span class="tab-time"> 2018-03-14</span></li>
                      
                    </ul>
                  
<div class="more"><a class="more-link" href="#" title="显示更多"><span class="moretext"><img src="./ikhuxtyr_files/icon_more_1.gif" border="0"></span></a></div>
                </div>
              </div>
            </li>
            <li style="display: none;">
              <div frag="面板9">
                <div frag="窗口9">
                  <div class="more_m"><a href="#" >进入新闻网&gt;</a></div>
                  
                    <ul class="clearfix">
                      
                      <li class="tab-news t_1"><span class="tab-title"><a href="#"  title="关于做好“小岗精神与乡村振兴”理论研讨会征文征集工作的通知"><font style="color:#FF0000;">关于做好“小岗精神与乡村振兴”理论研讨会征文征集工作的通知</font></a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_2"><span class="tab-title"><a href="#"  title="巢湖学院2018年消防维保服务采购竞争性谈判公告">巢湖学院2018年消防维保服务采购竞争性谈判公告</a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_3"><span class="tab-title"><a href="#"  title="巢湖学院2019届毕业生图像采集服务采购竞争性谈判公告">巢湖学院2019届毕业生图像采集服务采购竞争性谈判公告</a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_4"><span class="tab-title"><a href="#"  title="巢湖学院2018届毕业生学历、学位证书印制采购竞争性谈判公告">巢湖学院2018届毕业生学历、学位证书印制采购竞争性谈判公告</a></span> <span class="tab-time"> 2018-03-19</span></li>
                      
                      <li class="tab-news t_5"><span class="tab-title"><a href="#"  title="巢湖学院2017年度二级单位工作总结及中层领导干部述职报告">巢湖学院2017年度二级单位工作总结及中层领导干部述职报告</a></span> <span class="tab-time"> 2018-03-17</span></li>
                      
                      <li class="tab-news t_6"><span class="tab-title"><a href="#"  title="关于2018年3月教职工政治理论学习安排的通知">关于2018年3月教职工政治理论学习安排的通知</a></span> <span class="tab-time"> 2018-03-14</span></li>
                      
                      <li class="tab-news t_7"><span class="tab-title"><a href="#"  title="关于提交2017年度巢湖学院教职工大病医疗救助申请的通知">关于提交2017年度巢湖学院教职工大病医疗救助申请的通知</a></span> <span class="tab-time"> 2018-03-13</span></li>
                      
                      <li class="tab-news t_8"><span class="tab-title"><a href="#"  title="巢湖学院2018届毕业生体检服务采购竞争性磋商公告">巢湖学院2018届毕业生体检服务采购竞争性磋商公告</a></span> <span class="tab-time"> 2018-03-12</span></li>
                      
                    </ul>
                  
<div class="more"><a class="more-link" href="#" title="显示更多"><span class="moretext"><img src="./ikhuxtyr_files/icon_more_1.gif" border="0"></span></a></div>
                </div>
              </div>
            </li>
            <li style="display: none;">
              <div frag="面板11">
                <div frag="窗口11">
                  <div class="more_m"><a href="#" >进入新闻网&gt;</a></div>
                  
                    <ul class="clearfix">
                      
                      <li class="tab-news t_1"><span class="tab-title"><a href="#"  title="关于2017—2018学年度第二学期期初补（缓）考工作的通知"><font style="color:#FF142C;">关于2017—2018学年度第二学期期初补（缓）考工作的通知</font></a></span> <span class="tab-time"> 2018-03-05</span></li>
                      
                      <li class="tab-news t_2"><span class="tab-title"><a href="#"  title="关于实行开学学生教务系统注册的通知"><font style="color:#FF2B4F;">关于实行开学学生教务系统注册的通知</font></a></span> <span class="tab-time"> 2018-02-25</span></li>
                      
                      <li class="tab-news t_3"><span class="tab-title"><a href="#"  title="关于开展2018年上半年全国高校教师网络培训工作报名的通知">关于开展2018年上半年全国高校教师网络培训工作报名的通知</a></span> <span class="tab-time"> 2018-03-09</span></li>
                      
                      <li class="tab-news t_4"><span class="tab-title"><a href="#"  title="关于开展巢湖学院电子商务“创新、创意及创业”挑战赛的通知">关于开展巢湖学院电子商务“创新、创意及创业”挑战赛的通知</a></span> <span class="tab-time"> 2018-03-08</span></li>
                      
                      <li class="tab-news t_5"><span class="tab-title"><a href="#"  title="关于2017级学生大学体育网上选课的通知"><font style="color:#120104;">关于2017级学生大学体育网上选课的通知</font></a></span> <span class="tab-time"> 2018-02-27</span></li>
                      
                      <li class="tab-news t_6"><span class="tab-title"><a href="#"  title="巢湖学院2018年度校级教学成果奖评选结果公示"><font style="color:#120201;">巢湖学院2018年度校级教学成果奖评选结果公示</font></a></span> <span class="tab-time"> 2018-02-23</span></li>
                      
                      <li class="tab-news t_7"><span class="tab-title"><a href="#"  title="关于2017——2018学年度第二学期教学值勤工作安排的通知">关于2017——2018学年度第二学期教学值勤工作安排的通知</a></span> <span class="tab-time"> 2018-02-23</span></li>
                      
                      <li class="tab-news t_8"><span class="tab-title"><a href="#"  title="关于开展2017—2018学年度第二学期期初教学检查工作的通知">关于开展2017—2018学年度第二学期期初教学检查工作的通知</a></span> <span class="tab-time"> 2018-02-23</span></li>
                      
                    </ul>
                  
<div class="more"><a class="more-link" href="#" title="显示更多"><span class="moretext"><img src="./ikhuxtyr_files/icon_more_1.gif" border="0"></span></a></div>
                </div>
              </div>
            </li>
            <li class="active" style="display: list-item;">
              <div frag="面板12">
                <div frag="窗口12">
                  <div class="more_m"><a href="#" >进入新闻网&gt;</a></div>
                  
                    <ul class="clearfix">
                      
                      <li class="tab-news t_1"><span class="tab-title"><a href="#"  title="3月7日：科技成果转移转化专题报告会">3月7日：科技成果转移转化专题报告会</a></span> <span class="tab-time"> 2018-03-05</span></li>
                      
                      <li class="tab-news t_2"><span class="tab-title"><a href="#"  title="1月5日：中共安徽省委党校张彪教授学术讲座">1月5日：中共安徽省委党校张彪教授学术讲座</a></span> <span class="tab-time"> 2018-01-03</span></li>
                                            
                      <li class="tab-news t_4"><span class="tab-title"><a href="#"  title="12月29日：苏州红昇环保科技有限公司总经理陈永勤学术讲座">12月29日：苏州红昇环保科技有限公司总经理陈永勤学术讲座</a></span> <span class="tab-time"> 2017-12-26</span></li>
                      
                      
                      <li class="tab-news t_6"><span class="tab-title"><a href="#"  title="12月13日：重庆大学司有和教授学术讲座">12月13日：重庆大学司有和教授学术讲座</a></span> <span class="tab-time"> 2017-12-11</span></li>
                      
                      <li class="tab-news t_7"><span class="tab-title"><a href="#"  title="11月30日：安徽财经大学马成文教授学术讲座">11月30日：安徽财经大学马成文教授学术讲座</a></span> <span class="tab-time"> 2017-11-28</span></li>
                      
                      <li class="tab-news t_8"><span class="tab-title"><a href="#"  title="11月29日：巢湖市中心幼儿园园长於婷婷学术讲座">11月29日：巢湖市中心幼儿园园长於婷婷学术讲座</a></span> <span class="tab-time"> 2017-11-28</span></li>
                      
                    </ul>
                  
<div class="more"><a class="more-link" href="#" title="显示更多"><span class="moretext"><img src="./ikhuxtyr_files/icon_more_1.gif" border="0"></span></a></div>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="m_link">
          <div frag="面板13">
            <div frag="窗口13">
              
                <ul class="clearfix">
                  
                  <li class="link_c l_1"><a href="#"  title="智慧巢院"><img src="./ikhuxtyr_files/9bb70646-d8d5-4988-befc-4f5c7883e8de.png" width="640"></a></li>
                  
                  <li class="link_c l_2"><a href=#  title="虚拟校园"><img src="./ikhuxtyr_files/7fe78c8a-235a-4110-9b0b-7f9deb360b2e.png" width="640"></a></li>
                  
                  <li class="link_c l_3"><a href="#"  title="校庆专栏"><img src="./ikhuxtyr_files/e70d73df-a25b-449b-8911-f744cc7c90dc.jpg" width="640"></a></li>
                  
                </ul>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="wp-wrapper wp-container" style="padding-top:0;">
  <div class="wp-inner clearfix">
    <div class="m_bottom">
      <div frag="面板14">
        <div frag="窗口14">
          <div id="topw14" class="imgscroll2_top" style="width:840px;height:100%;overflow:hidden;">
    <table id="tabw14" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
            <td id="beginw14">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="imgscroll2_tpl clearfix ">
                    <tbody><tr class=" web_l w_{序号值} ">
                        <td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="http://www.chtc.edu.cn/_redirect?siteId=5&amp;columnId=2033&amp;articleId=54611" title="两学一做">
                                    
                                        <img alt="两学一做" src="./ikhuxtyr_files/e2a08d73-3afd-41ff-920b-913b50f0e7cf_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="巢院学子在基层">
                                    
                                        <img alt="巢院学子在基层" src="./ikhuxtyr_files/5b85df6d-7f11-4709-a31b-f862fc0dad50_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="学风建设专题网">
                                    
                                        <img alt="学风建设专题网" src="./ikhuxtyr_files/890b57c7-fa06-4f73-a5a7-4a223a400d6a_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="就业信息网">
                                    
                                        <img alt="就业信息网" src="./ikhuxtyr_files/b0ff0bf3-2ef9-4f4e-b06a-35e3cc2b215e_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td>
                    </tr>
                </tbody></table>
            </td>
            <td id="endw14">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="imgscroll2_tpl clearfix ">
                    <tbody><tr class=" web_l w_{序号值} ">
                        <td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="两学一做">
                                    
                                        <img alt="两学一做" src="./ikhuxtyr_files/e2a08d73-3afd-41ff-920b-913b50f0e7cf_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="巢院学子在基层">
                                    
                                        <img alt="巢院学子在基层" src="./ikhuxtyr_files/5b85df6d-7f11-4709-a31b-f862fc0dad50_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="学风建设专题网">
                                    
                                        <img alt="学风建设专题网" src="./ikhuxtyr_files/890b57c7-fa06-4f73-a5a7-4a223a400d6a_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td><td nowrap="nowrap" class=" imgscroll2_td ">
                            <div class="imgscroll2_img">
                                <a tailtagoutput="false"  href="#" title="就业信息网">
                                    
                                        <img alt="就业信息网" src="./ikhuxtyr_files/b0ff0bf3-2ef9-4f4e-b06a-35e3cc2b215e_s.jpg" width="200px" height="65px">
                                    
                                </a>
                            </div>
                        </td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody></table>
</div>

<script language="javascript">
    var topw14 = document.getElementById("topw14");
    var beginw14 = document.getElementById("beginw14");
    var endw14 = document.getElementById("endw14");
    var tabw14 = document.getElementById("tabw14");
    //复制内容
    endw14.innerHTML = beginw14.innerHTML;
    //调整table的宽度
    tabw14.style.width = topw14.offsetWidth * 2;
    //循环函数
    function marqueew14() {
        if (endw14.offsetWidth - topw14.scrollLeft <= 0) {
            topw14.scrollLeft -= beginw14.offsetWidth;
        } else {
            topw14.scrollLeft += 1;
        }
    }
    //定时器
    var mymarw14 = setInterval(marqueew14, 50);
    //鼠标移入
    topw14.onmouseover = function() {
        clearInterval(mymarw14);
    };
    //鼠标移出
    topw14.onmouseout = function() {
        mymarw14 = setInterval(marqueew14, 50);
    };
</script>
        </div>
      </div>
    </div>
  </div>
</div>
<!--//主体结束--> 

<!--底部开始-->
<footer class="wp-wrapper wp-footer">
  <div class="wp-inner clearfix">
    <div class="foot_l"><img src="./ikhuxtyr_files/sydw.png">
      <p>版权所有 巢湖学院 Copyright © Chaohu university All rights reserved.</p>
      <p>校址：安徽省合肥巢湖经济开发区  邮政编码：238000 皖ICP备05018249号</p>
    </div>
    <div class="foot_r">
      <div class="f_r_peo" frag="面板15">
        <div frag="窗口15">
          <div class="articlecontent ">
    
        
            
                <style type="text/css">.wp_editor_art_table td{border:0 !important; background:none !important; color:#fff;}.wp_editor_art_table{margin-bottom:0 !important;}</style><table class="wp_editor_art_table" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><p style="text-align:center;"><img data-layer="photo" src="./ikhuxtyr_files/f83ddbf3-f91b-4606-a96d-ba7a07a9d8ae.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wzewm.jpg&#39;}" original_name="emm.jpg"></p></td><td><p style="text-align:center;"><img data-layer="photo" src="./ikhuxtyr_files/4c99581a-6a7f-43f0-aa57-3eb5ab165c3f.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wzewm.jpg&#39;}"></p></td><td><p style="text-align:center;"><img data-layer="photo" src="./ikhuxtyr_files/d87e10f4-44f5-4adb-b089-307cc6f34898.jpg" style="float:none;" sudyfile-attr="{&#39;title&#39;:&#39;wxewm.jpg&#39;}"></p></td><td><br></td></tr><tr><td style="text-align:center;">移动校园</td><td style="text-align:center;">网站二维码</td><td style="text-align:center;">微信二维码<br></td><td style="text-align:center;"><br></td></tr></tbody></table>
            
        
    
</div>
        </div>
      </div>
      <div class="f_r_le"><img src="./ikhuxtyr_files/gaba.png"><span>皖公网安备 34018102340270号</span></div>
    </div>
  </div>
</footer>
<!--//底部结束-->


<script type="text/javascript" src="./ikhuxtyr_files/app.js"></script>
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

 <img src="./ikhuxtyr_files/_visitcount" style="display:none" width="0" height="0"></body></html>