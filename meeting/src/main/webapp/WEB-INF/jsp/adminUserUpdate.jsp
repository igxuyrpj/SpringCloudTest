<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>admin</title>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
window.onload=function(){
	var tel="${info }";
	if (tel==1){
		alert("请选择文件！")
	}
};

</script>
</head>
<body>

<div style="margin-left: 100px;">

           <hr>
           <!-- ${pageContext.request.contextPath } -->
        <form  id="upload" method="post" action="${pageContext.request.contextPath }/meeting/updateUserSave" enctype="multipart/form-data">
           <table border="1" cellpadding="15" align="center" style="text-align: center;">
           
				<tr>
				  <td width="150px;">编号</td>
				  <td width="260px;">
				 <input type="text" name="id" value="${room.id }" class="Required" readonly="readonly"> 
				 <!--  <label  name="id">${room.id }</label>-->
				 </td>
				</tr>
				<tr>
				  <td>用户名</td>
				  <td>
				  <input type="text" name="username" value="${room.username }" class="Required"  > 
				<%--  <label name="city">${room.city }</label> --%>
				
				 </td>
				</tr>
				<tr>
				  <td>密码</td>
				  <td>
				 <input type="text" name="password" value="${room.password }" class="Required" > 
				 
				  </td>
				</tr>
				<tr>
				  <td>手机号码</td>
				  <td> <input type="text" name="phone_number" value="${room.phone_number }" class="Required" >
				  
				  </td>
				</tr>
				<tr>
				  <td>注册日期</td>
				  <td>
				  <input type="text" name="date" value="${room.date }" class="Required" >
				 
				  </td>
				</tr>
				
           <tr> <td colspan="2" align="center">
            <input style="height: 30px;"   type="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <button style="height:30px;" onclick="window.history.go(-1)" >取消</button></td>
            </tr>
            
    </table> 
     
          </form>
       
</div>





</body></html>