<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/registter.css">
	
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/vali.min.js"></script>
	<!-- <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script> -->
<script type="text/javascript">
window.onload=function(){
	var tel="${info }";
	if (tel==1){
		alert("用户名或密码错误")
	}
};
</script>

</head>
<body>
	<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
					<form class="form2" method="post" action="${pageContext.request.contextPath}/login">
						<h2>欢迎登录</h2>
						<div style="height: 32px;"></div>
						<div class="vali">
							<input type="text" name="username" value="" class="Required" placeholder="请输入用户名">
						</div>
							
						<div class="vali">
							<input type="password" name="password" value="" placeholder="请输入密码" class="pasw">
						</div>
						<!-- <div class="vali">
							<input type="password" name="" value="" placeholder="请再次输入密码" id="password" class="pasws">
						</div> -->
						<!-- <div class="vali">
							<input type="text" name="" value="" class="eal" placeholder="请输入邮箱,邮箱格式,123@163.com">
						</div>
						<div class="vali">
							<input type="text" name="" value="" class="cid" placeholder="请输入身份证">
						</div> -->
						<div class="submit">
							<input type="submit" class="btn" value="立即登录">
						</div>
						<span style="margin-left: 2px;"><a style="text-decoration: none;" href="register.jsp">点击注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;<a style="text-decoration: none;" href="index.jsp">返回首页</a></span>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$.myvali({
			myform:".form2",								//表单id
			mybtn:".btn",									//提交表单按钮id	
			myVali:".vali",									//input父盒子的class，可自定义类名

			Required:".Required",							//验证必填选项，值为Required,input自己加class
			RequiredTps:["不能为空!!!"],					//只验证不为空提示

			Requireds:".Requireds",							//验证必填不同提示，值为Requireds,input自己加class
			reqtps:".reqtps",								//验证不为空不同提示,input父盒子的class,可自定义类名
			Reqlength:[[2,4]],								//只验证不为空,设置最小长度和最大长度
			ReqlengthTps:["+不为空1"],						//验证不为空长度提示
			RequiredsTps:["这是自定义提示1"],				//默认提示

			myName:".uersname",								//用户名id或class
			myName2:".nicheng",								//昵称id或class
			
			myPassword:".pasw",								//密码id或class
			myConfirmPassword:".pasws",						//确认密码id或class

			myCard:".cid",									//身份证验证id或class
			
			// myPhone1:"#v",								//修改手机号(原手机号用这个验证)id或class
			// phoneIsServer1:false,						//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl1:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType1:"post",					//以什么方式提交
			// phoneIsServerDType1:"json",					//以什么格式提交

			myPhone:".phone",								//手机号id或class
			// phoneIsServer:false,							//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType:"post",					//以什么方式提交
			// phoneIsServerDType:"json",					//以什么格式提交

			isPhoneCode:true,								//开启手机短信验证，true开启，默认false不开启(此项功能与myPhone配合验证)
			phoneCodeBtn:".codebtn",						//发送手机验证码id或class（按钮）
			count:30,										//发送短信验证码倒计时，默认60s（按钮）
			codeBtnCol1:["rgb(150, 150, 150)"],				//短信验证码倒计时（按钮，通过验证前）颜色
			codeBtnCol2:["#333"],							//短信验证码倒计时（按钮，通过验证后）颜色
			// isPhoneCodeUrl:["1.php"],					//发送手机验证码与数据库验证的路径（按钮）
			// isPhoneCodeType:"post",						//以什么方式提交（按钮）
			// isPhoneCodeDType:"json",						//以什么格式提交（按钮）


			phoneCodeInput:".phcode",						//短信验证码id或class（输入框）
			// phoneCodeInputUrl:["1.php"],					//短信验证码与数据库验证的路径（输入框）
			// phoneCodeInputType:"post",					//以什么方式提交（输入框）
			// phoneCodeInputDType:"json",					//以什么格式提交（输入框）
			
			myMailbox:".eal",								//邮箱id或class
			// mailboxIsServer:false,						//邮箱是否要与数据库验证，默认false为否
			// mailboxIsServerUrl:["1.php"],				//邮箱与数据库验证的路径
			// mailboxIsServerType:"post",					//以什么方式提交
			// mailboxIsServerDType:"json",					//以什么格式提交

			// myCode:"#v",									//验证码id或class
			// CodeIsServerUrl:["1.php"],					//验证码与数据库验证的路径
			// CodeIsServerType:"post",						//以什么方式提交
			// CodeIsServerDType:"json",					//以什么格式提交

			// PwdStrong:true,								//密码强度验证，默认false不开启，true开启
			// isStrongTps:["弱","中","强"],				//密码强度提示，可自定义提示
				
			// myNameMinLength:3,							//用户名最小长度，不写默认长度3
			// myNameMaxLength:12,							//用户名最大长度，不写默认长度12
			
			// myNameMinLength2:3,							//昵称最小长度，不写默认长度3
			// myNameMaxLength2:12,							//昵称最大长度，不写默认长度12

			// myPasswordMinLength:6,						//密码最小长度，不写默认长度6
			// myPasswordMaxLength:16,						//密码最大长度，不写默认长度16
			
			// corrCol:"#4E7504",							//设置正确提示文字的颜色，不设置默认绿色
			// errCol:"red",	
			//设置错误提示文字的颜色，不设置默认红色
		});
		window.onload=function(){
			var tel="${info }";
			if (tel==1){
				alert("用户名或密码错误")
			}
		};
	</script>
</body>
</html>