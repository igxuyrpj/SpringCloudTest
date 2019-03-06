<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
var pageBar={  
	    //pageCount 总页数， currentPage 当前页数  
	    startIndex:0,  
	    endIndex:0,  
	    currentIndex:1,  
	    deviation:5,  
	    pageInit:function(pageCount,currentPage,totalCount,eventFun,deviation){  
	        //当前页面  
	        pageBar.currentIndex =currentPage;  
	        pageBar.clickPage=eventFun;  
	        var htmlStr= "";  
	        var back=pageBar.currentIndex-1;  
	        if(pageBar.currentIndex > 1){  
	            back=pageBar.currentIndex-1;  
	            htmlStr +="<span class=\"home\" onclick='pageBar.clickPage(1)'><s></s></span>";  
	            htmlStr +="<span class=\"pre-btn\" onclick='pageBar.clickPage("+back+")'><s></s></span>";  
	        }else{  
	            htmlStr +="<span class=\"home disabled\"><s></s></span>";  
	            htmlStr +="<span class=\"pre-btn disabled\"><s></s></span>";  
	        }  
	        htmlStr+="<input type=\"text\" onkeypress='pageBar.goPage(this)' value=\""+ currentPage +"\"  class=\"page-input center\"/> / <span>"+ pageCount +" </span>";  
	<span style="white-space:pre">        </span>htmlStr+="<input type=\"hidden\" id=\"pageNo\" value=\""+currentPage+"\"/>";  
	        htmlStr += "页， <font>共"+totalCount+"条 </font>";  
	        if(pageBar.currentIndex!=pageCount && pageCount > 0){  
	            var nextPage=back;  
	            nextPage= nextPage+2;  
	            htmlStr += "<span class=\"next-btn\" onclick='pageBar.clickPage("+nextPage+")'><s></s></span>";  
	            htmlStr += "<span class=\"tail\" onclick='pageBar.clickPage("+pageCount+")'><s></s></span>";  
	        }else{  
	            htmlStr += "<span class=\"next-btn disabled\"><s></s></span>";  
	            htmlStr += "<span class=\"tail disabled\"><s></s></span>";  
	        };  
	        return htmlStr;  
	    },  
	    //跳转页面  
	    goPage:function(obj){  
	        if(event.keyCode == "13"){  
	            var cruPage = $(obj).val();  
	            pageBar.clickPage(cruPage);  
	        }  
	    },  
	    clickPage:function(){  
	  
	    },  
	};  




 

</script>

</head>
<body>
<input id="type" id="type" placeholder="请输入要查询的部门信息" type="text" ><button id="inquireBtn" class="btn">查询</button><pre name="code" class="html"><!-- 显示查询结果 -->  
<table >  
             
           <tr >  
              <th style="text-align: center">序号</th>  
              <th style="text-align: center">姓名</th>  
              <th style="text-align: center">邮箱</th>  
              <th style="text-align: center">部门</th>  
          </tr>  
           
          <tbody id="resultTbody">  
          </tbody>  
       </table>  
<span style="white-space:pre">    </span><!-- 分页组件 -->  
        <div class="search-footer">  
            <div id="pageBar"></div>  
        </div><pre name="code" class="html">  
</body>
<script type="text/javascript">

var User = function(){  
    this.init = function(){  
        $("#inquireBtn").unbind("click").bind("click", function() {  
        	alert("ddd");
            $("#pageNo").val(1);// 每次查询都默认为打开第一页  
            user.settingQuery();  
        });  
    };  
    //根据查询条件查询  
    this.settingQuery = function(){  
        $("#pageBar").html("");  
        var url ='${pageContext.request.contextPath }/route/get';  
        var inquireData = user.acquireInquireData();  
        $.ajax({  
            type: type,  
            async: true,  
            url: url,  
            data:inquireData  ,
            success: function (result) {  
                user.callback(result);  
            }  
        });  
      
    };  
    this.acquireInquireData = function(){  
        var page = {  
                pageSize:'20',  
                pageNo : $("#pageNo").val()// 页面显示第几页，为空时默认为加载第一页  
        };  
        var data = {  
                type:$('#type').val(),  
                page:page  
        };  
        return data;  
    };    
  
    //返回查询结果  
    this.callback = function(showData) {  
            var xHtml = '';  
            if (showData.length == 0) {  
                xHtml += "<tr><td class=\"nodata\" colspan=\"7\">No data to display!</td></tr>";  
                $("#resultTbody").html(xHtml);  
                  
            } else {  
                for (var i = 0; i < showData.length; i++) {  
                    detailId = i;  
                    xHtml += "<tr>";  
                    xHtml += "<td class='wid10'>" + (i + 1)+ "</td>";  
                    xHtml += "<td>"+ showData[i].title + "</td>";  
                    xHtml += "<td>"+ showData[i].info + "</td>";  
                    xHtml += "<td>"+ showData[i].type + "</td>";  
                    xHtml += "</tr>";  
                }  
                $("#resultTbody").html(xHtml);  
                var pageBarStr = pageBar.pageInit(page.totalPage, page.pageNo,page.totalCount, user.clickPage, 5);  
                $(".search-footer").html(pageBarStr);  
            }  
        }  
    };  
      
    this.clickPage = function(page){  
        $("#pageNo").val(page);// 修改为当前页,然后翻页查询  
        user.settingQuery();  
    };  


var user;  
$(function(){  
      
    user = new User();  
    user.init();  
    //默认显示查询结果  
    user.settingQuery();  
}); 
</script>
</html>
