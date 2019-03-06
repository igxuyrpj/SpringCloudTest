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
        <form  id="upload" method="post" action="${pageContext.request.contextPath }/meeting/insertOrder" enctype="multipart/form-data">
           <table border="1" cellpadding="15" align="center" style="text-align: center;">
           
				<tr>
				  <td width="150px;">编号</td>
				  <td width="260px;">
				 <input type="text" name="city" value="${room.id }" class="Required" readonly="readonly"> 
				 <!--  <label  name="id">${room.id }</label>-->
				 </td>
				</tr>
				<tr>
				  <td>城市</td>
				  <td>
				  <input type="text" name="city" value="${room.city }" class="Required" readonly="readonly" > 
				<%--  <label name="city">${room.city }</label> --%>
				
				 </td>
				</tr>
				<tr>
				  <td>类型</td>
				  <td>
				 <input type="text" name="type" value="${room.type }" class="Required" readonly="readonly"> 
				   <!--  <label name="type">${room.type }</label>-->
				  </td>
				</tr>
				<tr>
				  <td>预约时间</td>
				  <td> <input type="date" name="time" value="${room.time }" class="Required" readonly="readonly">
				  
				   <!--<label name="time">${room.time }</label>-->
				  </td>
				</tr>
				<tr>
				  <td>房间价格(￥)</td>
				  <td>
				  <input type="text" name="money" value="${room.money }" class="Required" readonly="readonly">
				  <!-- <label name="money"></label> -->
				  </td>
				</tr>
				<tr>
				  <td>容纳人数(人)</td>
				  <td>
				 <input type="text" name="num" value="${room.num }" class="Required" readonly="readonly"> 
				  <!--   <label name="num">${room.num }</label>-->
				  </td>
				</tr>
				<tr>
				  <td>会议室创建日期</td>
				  <td>
				 <input type="text" name="date" value="${room.date }" class="Required" readonly="readonly"> 
				  <!--   <label name="num">${room.num }</label>-->
				  </td>
				</tr>
				<tr>  
				 <td height="100px;">会议室图片</td>
				 <td>  <img src="/image/${room.pic}" width="252" height="130" />
				 </td>
                <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="3" id="user-intro" name="info" readonly="readonly"
																>${room.info }</textarea></td> 
			
			<!--  <label name=info>${room.info }</label>-->
				</tr>
                 
           </tr>
           <tr> <td colspan="2" align="center">
            <input style="height: 30px;"   type="submit" value="确定预约">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <button style="height:30px;" onclick="window.history.go(-1)" >取消预约</button></td>
            </tr>
            
    </table> 
     
          </form>
       
</div>





</body></html>