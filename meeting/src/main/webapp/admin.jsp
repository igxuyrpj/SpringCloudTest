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

<div style="margin-left: 150px;">

           <hr>
           <!-- ${pageContext.request.contextPath } -->
        <form  id="upload" method="post" action="${pageContext.request.contextPath }/meeting/upload" enctype="multipart/form-data">
           <table border="1" cellpadding="15" align="center">
				<tr>
				  <td>城市</td>
				  <td>
				 <!--  <input type="text" name="city" value="" class="Required" placeholder="请输入所在城市"> -->
				 <select style="font-size: 18px;width: 90px;" name="city" required="">
																<option>合肥</option>
																<option>南京</option>
																<option>上海</option>
																<option>杭州</option>
																<option>苏州</option>
																<option>北京</option>
																<option>广州</option>
																<option>...</option>
																


															</select>
				 
				 </td>
				</tr>
				<tr>
				  <td>类型</td>
				  <td>
				  <!-- <input type="text" name="type" value="" class="Required" placeholder="请输入房间类型"> -->
				  <select style="font-size: 18px;width: 90px;" name="type" required="">
																<option>会议室</option>
																<option>宴会厅</option>	
																<option>广场</option>
																<option>礼堂</option>
																<option>主题</option>
																<option>其他</option>
																



															</select>
				  
				  </td>
				</tr>
				<tr>
				  <td>空闲时间</td>
				  <td><input type="date" name="time" value="" class="Required" placeholder="请输入时间"></td>
				</tr>
				<tr>
				  <td>房间价格(￥)</td>
				  <td>
				<!--   <input type="text" name="money" value="" class="Required" placeholder="请输入价格"> -->
				  <select style="font-size: 18px;width: 90px;" name="money" required="">
																<option>200</option>
																<option>500</option>
																<option>1500</option>
																<option>2500</option>
																<option>3500</option>
																<option>4500</option>
																<option>4500以上</option>


															</select>
				  </td>
				</tr>
				<tr>
				  <td>容纳人数(人)</td>
				  <td>
				  <!-- <input type="text" name="num" value="" class="Required" placeholder="请输入人数"> -->
				  <select style="font-size: 18px;width: 90px;" name="num" required="">
																<option>10</option>
																<option>30</option>
																<option>50</option>
																<option>80</option>
																<option>100</option>
																<option>150</option>
																<option>200</option>
																<option>200以上</option>
																


															</select>
				  </td>
				</tr>
				<tr>  
				 <td>会议室图片</td>
				 <td>   <input type="file"  name="pic" id="pic">
				 </td>
                <tr>
				  <td>会议室描述</td>
				  <td><textarea style="font-size: 18px;"  rows="5" id="user-intro" name="info"
																placeholder="输入备注"></textarea></td>
				</tr>
                 
           </tr>
           <tr> <td colspan="2" align="center">
            <input type="submit" value="上传"></td></tr>
    </table> 
     
          </form>
         <a href="../index.jsp">返回首页</a>
</div>





</body></html>