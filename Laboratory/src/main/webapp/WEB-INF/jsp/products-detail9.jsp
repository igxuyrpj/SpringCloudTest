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
						<li class="active hidden-xs">
							<a href="../index.jsp">实验室概述</a>
						</li>
						<li>
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
						<li>
							<a href="${pageContext.request.contextPath}/route/getMsg">留言评价</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="fl hidden-lg hidden-md hidden-sm">
			<ul>
				<li>
					<a href="${pageContext.request.contextPath}/route/index">
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
			<!-- <div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="../static/images/banner/banner2.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner3.jpg">
				</div>
				<div class="item">
					<img src="../static/images/banner/banner1.jpg">
				</div>
			</div> -->

			
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
						<li class="active">规章制度</li>
					</ol>
					
					<div class="pro-detail row">
						<div class="col-sm-4 col-xs-12 ">
							<img src="../static/images/22.png" />
							
						</div>
						<div class="col-sm-8 col-xs-12">
							<div class="pack">
								<ul>
									<li><a>详细信息</a></li>
								</ul>
							</div>
							<table>
								<tr>
									<td class="de-feature"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ：
教师岗位职责
一、忠诚教育事业、热爱本职工作，树立为教学服务的思想，服从工作安排，模范遵守学校、学院的各项规章制度；
二、努力学习业务知识，掌握各种仪器设备的原理、构造，使用方法与基本的维修技能，对实验仪器要定期检查，使其处于良好状态， 保证实验教学正常开展；
三、认真做好实验前的各项准备工作、包括整理设备、网络调试、 安装软件、熟练掌握实验内容及调试方法。在指导学生实验过程中要 认真、耐心；中心老师要协调解决实验中出现的各种问题；
四、要经常向有关教师介绍中心里有关设备、器材及实验情况；
五、各实验课程小组组长主持或编写实验教学大纲、实验指导书，积极参与编写实验课教材；
十一、下班离开中心必需切断电源、关好门窗，作好实验室的放火、防盗等工作，努力做到安全无事故。
六、中高级技术人员要独立设计实验方案、独立指导实验、独立讲授实验课程。高级技术人员要能解决实验过程中出现的关键性技术难题；承担中、初级技术人员的培养及指导工作；
七、坚持教学改革、充实实验内容，逐步减少验证性实验、增加设计性和开放性实验；
八、创造条件，开放中心，协助任课教师组织学生开展课外科技兴趣小组活动；
九、做好实验报告、设计报告、实验数据及实验教材的整理归档工作；
十、做好中心日常管理工作，保持中心环境的整洁；
十一、下班离开中心必需切断电源、关好门窗，作好实验室的放火、防盗等工作，努力做到安全无事故。

学生实验守则
一、严格遵守学校、学院实验室的规章制度及实验纪律。
二、认真预习，明确实验的目的和基本要求。实验前必须认真预习实验讲义或实验指导书，掌握实验的原理、方法、步骤；了解有关仪器的性能、配置；熟悉其操作规程及安全注意事项。综合开放性实验项目，必须在实验教师的指导下拟定出正确的实验方案。
三、进入中心要衣着整洁，不准高声谈笑，不准吸烟，不准随 地吐谈，不准乱抛（藏）废弃物。
四、严格遵守操作规程，科学进行实验。实验过程中必须听从实验教师和管理人员的指导；切实做到独立思考、科学操作、细致观察、如实记录。自觉培养严谨、求是的科学作风。积极参与实验教学改革，提倡树立生动活泼、刻苦钻研、善于探索、勇于创新、积极学习的学风。认真分析实验中观察到的现象和存在 的问题，实验完毕应及时整理实验数据记录，实验记录经指导教师审阅签字后，才可拆除实验线路。按要求写出实验报告，按时送交实验指导教师。不准弄虚作假，不准任意修改实验数据，不准抄袭实验报告，一经发现和核实，除给予批评教育和书面检查外，该实验成绩记为不及格；凡两次重犯者，该实验课程成绩以零分计，必须全部重做才能获得该实验课程学分（重做实验的费用需另交）；经多次教育屡教不改者，按学校有关规定进行处理。严防事故，确保实验室的安全。实验过程中发生任何破坏性异常现象，（例如元器件冒烟、发烫有气味或仪器设备出现异常），应立即切断电源，保护现场，及时报告指导教师，不得自行处理。等待查明原因、排除故障、教师同意后，才能继续进行实验。违反操作规程造 成仪器设备及实验材料损坏者，将酌情赔偿，并视情节轻重进行批评直到纪律处分。如发生事故，应自觉填写事故报告单，总结经验，吸取教训。
五、遵守纪律，不迟到早退，不准无故缺席。不准在中心内进行与本实验无关的活动，不准利用计算机玩电子游戏，未经批准不得动用与本实验无关的设备器材。实验仪器设备、工具、用具等应妥善保管，实验或实习结束后，整理好仪器设备并如数清点归还，若有遗失或损坏应按《巢湖学院损坏、遗失实验器材实行赔偿的暂行办法》和学校有关规定处理。
六、确保安全，注意卫生。
七、严格遵守实验室安全管理条例和仪器设备操作规程,不准违规操作；保持实验室整洁、科学、规范、文明、有序的工作环境。如有违反，造成设备器材或设施损坏引发安全事故，当事人必须写出书面报告，由实验指导教师和实验室负责人根据损失大小、情节轻重、按有关规定提出处理意见并报学院和学校批准后，分别给予批评教育、经济处罚、行政处分直至追究法律责任。每次实验结束，学生轮流协助实验室打扫卫生和整理仪器。以增强参与管理意识。
八、 以上各条必须自觉遵守，违反者予以批评教育，情节严重的，依照有关规定进行处理。

工作人员岗位职责
中心是进行实验教学、科学研究和对外服务的重要基地。中心工作人员要树立全心全意为广大师生服务的思想，树立良好的职业道德和行为规范。努力做到实验育人、管理育人、服务育人。具体职责如下：
一、遵守国家法律、法规，遵守学校各项规章制度，认真贯彻国家教育方针。积极参加政治学习和集体活动。
二、中心主任全面负责实验室的工作。确定岗位任务，制定岗位责任制；制定实验室建设规划并组织实施；组织实验室各类人 员完成各项工作任务；定期检查、总结实验室工作；负责对实验室工作人员的培训及考核。
三、中心工作人员必须服从管理，服从工作安排，完成岗位任务（另行规定）。
四、遵守正常的上下班制度，不得无故迟到早退。
五、各实验课程小组组长要主持或负责组织编写实验教学大纲，编写实验指导书，编写实验课教材。

设备管理与维护
根据巢湖仪器设备管理办法的规定，为加强和规范我院的仪器管理工作，特制定如下措施：
一、 信息工程学院实验室的仪器设备实行归口，分级管理制度，中心由主任、实验室负责人统一管理仪器设备工作，各课程负责人负责管理各组的仪器设备。
二、 中心仪器设备借出与归还，必须按《设备借用申请表》和《设备归还表》的程序办理。包括因教学、毕业设计等借用的设备均按该此程序。
三、 设备使用单位必须认真做好仪器设备防火、防盗安全等工作，保证仪器设备完好利用，如发现隐患、意外等情况应及时向领导汇报。
四、 仪器设备被盗、丢失或严重损坏，必须立刻上报主管理部门的领导，待查明原因明确责任后，办理赔偿手续。
五、 各组实验室必须做好工作环境管理。如：仪器设备的使用率，实验环境卫生和仪器设备整洁等工作，特别是硬件实验组的实验箱必须在课程结束后，必须清理干净盖好归位。
六、 设备采购、维修及耗材，按设备耗材与维修的申请报告程序办理。
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