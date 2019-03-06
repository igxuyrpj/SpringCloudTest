  //data-url
var topicLi=$('.topic-list').find('li .fl');
var topicLi1=$('.topic-list').find('li .fr');
topicLi.click(function() {
    window.location.href=$(this).attr('data-url');
   });
topicLi1.click(function() {
    window.location.href=$(this).attr('data-url');
   });
   
 //弹出框
   var  sideDl=$('.nav-side').find('dl[data-on]').find("dt");
   sideDl.click(function(){
   if($(this).parent().attr('data-on')=='true'){
     $(this).parent().removeClass('active').siblings().addClass('active').find('.icon-r-arrow').show().parent().siblings('dd').hide();
     $(this).parent().find('dd').show().siblings().find('.icon-r-arrow').hide();
     $(this).parent().attr('data-on', 'false').siblings().attr('data-on', 'true');
   }else{
	/*	$(this).parent().find('.demand-main .first-step').show();
		$(this).parent().find('.side-show-ad').show();
		$(this).parent().find('.demand-main .second-step').hide()
		$(this).parent().find('.back-info').hide();
	   $(this).removeClass('on').parent().siblings().removeClass('active');
	     $(this).siblings().hide();
	      $(this).find('.icon-r-arrow').show();
	     $(this).parent().attr('data-on', 'true');*/
   };
   })
//关闭弹框
var close=$('.side-show .close');
close.click(function() {
  $(this).parent().parent().hide().siblings().find('.icon-r-arrow').show().parent().removeClass('on').parent().attr('data-on', 'true').siblings().removeClass('active');
});
//check
var formInput=$('.side-show-l .field:has(ul)').find('.form-control');
formInput.click(function(){
  formInput.removeClass('bodn').siblings('ul').hide();
  $(this).addClass('bodn').siblings('ul').show().siblings('.error-text').hide();
    return false;
});
  function  inputCheck(obj) {
   var text=obj.text();
  obj.parents('.check-box').hide().siblings('.form-control').val(text);
  obj.parents('div.field').find(".form-control").removeClass('bodn');
}
  function  boxCheck(obj,text) {
obj.append(text).find("li").find('a').click(function(){
   inputCheck($(this));
   $(this).parents('.check-box').siblings('.form-control').removeClass('bodn');

});
obj.parents('body').bind("click",function(e){
var target = $(e.target);
 $('.side-show-l .field:has(ul)').find('.form-control').removeClass('bodn').siblings('ul').hide();
if(target.closest(".check-box").length == 0){
$(".check-box").hide();
}
})
}

  var hylxText='<li data="23115"> <a href="javascript:;" title="培训/讲座">培训/讲座</a></li>'
	+'<li data="23116"> <a href="javascript:;" title="招商/推介">招商/推介</a></li>'
	+'<li data="23117"> <a href="javascript:;" title="交流/总结">交流/总结</a></li>'
	+'<li data="23118"> <a href="javascript:;" title="宴会/酒会">宴会/酒会</a></li>'
	+'<li data="23119"> <a href="javascript:;" title="颁奖/庆典">颁奖/庆典</a></li>'
	+'<li data="23120"> <a href="javascript:;" title="发布/展览">发布/展览</a></li>'
	+'<li data="23121"> <a href="javascript:;" title="路演/巡展">路演/巡展</a></li>'
	+'<li data="23122"> <a href="javascript:;" title="研讨/论坛">研讨/论坛</a></li>'
	+'<li data="23123"> <a href="javascript:;" title="地推/展示">地推/展示</a></li>'
	+'<li data="23124"> <a href="javascript:;" title="拓展/团建">拓展/团建</a></li>'
	+'<li data="23125"> <a href="javascript:;" title="派对/聚会">派对/聚会</a></li>'
	+'<li data="23126"> <a href="javascript:;" title="运动/赛事">运动/赛事</a></li>';
	
	var styleText='<li data="22646"> <a href="javascript:;" title="会议室/会议厅">会议室/会议厅</a></li>'
	+'<li data="22647"> <a href="javascript:;" title="宴会厅">宴会厅</a></li>'
	+'<li data="22648"> <a href="javascript:;" title="室内开放空间">室内开放空间</a></li>'
	+'<li data="22649"> <a href="javascript:;" title="公共区域/广场 ">公共区域/广场 </a></li>'
	+'<li data="22650"> <a href="javascript:;" title="运动场地">运动场地</a></li>'
	+'<li data="22651"> <a href="javascript:;" title="展厅/展馆">展厅/展馆</a></li>'
	+'<li data="22652"> <a href="javascript:;" title="剧院/礼堂">剧院/礼堂</a></li>'
	+'<li data="22653"> <a href="javascript:;" title="主题活动场地">主题活动场地</a></li>'
	+'<li data="22654"> <a href="javascript:;" title="多功能厅">多功能厅</a></li>'
	+'<li data="22655"> <a href="javascript:;" title="独立餐厅">独立餐厅</a></li>'
	+'<li data="22656"> <a href="javascript:;" title="其他">其他</a></li>';
	
	
var priceText='<li data="A,2000"> <a href="javascript:;">2000￥以下</a> </li>'
	+'<li data="2000,4000"> <a href="javascript:;">2000-4000￥</a> </li>'
	+'<li data="4000,6000"> <a href="javascript:;">4000-6000￥</a> </li>'
	+'<li data="6000,8000"> <a href="javascript:;">6000-8000￥</a> </li>'
	+'<li data="8000,10000"> <a href="javascript:;">8000-10000￥</a> </li>'
	+'<li data="10000,20000"> <a href="javascript:;">10000-20000￥</a> </li>'
	+'<li data="20000,40000"> <a href="javascript:;">20000-40000￥</a> </li>'
	+'<li data="40000,A"> <a href="javascript:;">40000￥以上</a> </li>';
	
var personText='<li data="A,30"> <a href="javascript:;" title="30人以下">30人以下</a></li>'
	+'<li data="30,60"> <a href="javascript:;" title="30-60人">30-60人</a></li>'
	+'<li data="60,100"> <a href="javascript:;" title="60-100人">60-100人</a></li>'
	+'<li data="100,200"> <a href="javascript:;" title="100-200人">100-200人</a></li>'
	+'<li data="200,300"> <a href="javascript:;" title="200-300人">200-300人</a></li>'
	+'<li data="300,500"> <a href="javascript:;" title="300-500人">300-500人</a></li>'
	+'<li data="500,A"> <a href="javascript:;" title="500人以上">500人以上</a></li>';
	
	
	
boxCheck($('#hyType'),styleText);
boxCheck($('#hylx'),hylxText);
boxCheck($('.side-show-l .check-price-box'),priceText);
boxCheck($('.side-show-l .check-person-box'),personText);



//日历
var start = {
    elem: '#check-begin',
    format: 'YYYY/MM/DD',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16 23:59:59', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
        $('#check-begin').siblings('.error-text').remove();
    }
};
var end = {
    elem: '#check-end',
    format: 'YYYY/MM/DD',
    min: laydate.now(),
    max: '2099-06-16 23:59:59',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，重置开始日的最大日期
        $('#check-end').siblings('.error-text').remove();
    }
};
var start2 = {
	    elem: '#check-begin2',
	    format: 'YYYY/MM/DD',
	    min: laydate.now(), //设定最小日期为当前日期
	    max: '2099-06-16 23:59:59', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end2.min = datas; //开始日选好后，重置结束日的最小日期
	         end2.start = datas //将结束日的初始值设定为开始日
	          $('#check-begin2').siblings('.error-text').remove();
	    }
	};
	var end2 = {
	    elem: '#check-end2',
	    format: 'YYYY/MM/DD',
	    min: laydate.now(),
	    max: '2099-06-16 23:59:59',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start2.max = datas; //结束日选好后，重置开始日的最大日期
	         $('#check-end2').siblings('.error-text').remove();
	    }
	};
laydate(start);
laydate(end);
laydate(start2);
laydate(end2);
//找场地搜索
//$('.submit-btn').submit(function(){
//      var j = 0;
//      var isS=false;
//      if($(this).hasClass('search-main')){
//    	  isS=true;
//      }else{
//    	  isS=false;
//      }
//      var data_div=$('.search-form').find('.form-control');
//      $('.error-text').remove();
//      for (var i = 0; i < data_div.length; i++) {
//	    if($(data_div[i]).hasClass('notNull') ){
//		    continue;
//	    } 
//        if (data_div[i].value == "") {
//          j++;
//          $(data_div[i]).parent().append('<span class="error-text">不能为空</span>');
//        }
//      }
//      if (j > 0) {
//        return false;
//      }else{
//    	  if(isS){
//    		 alert(1);
//     		 var city = $('.search-main .demand-cityId').data('py');
//    		 var dis = $('.search-main .demand-disId').val();
//    		 var act =$('.search-main .act').val();
//    		 var gmtBegin =$('.search-main .beginTime').val();
//    		 var gmtEnd =$('.search-main .endTime').val();
//    		 var ys =$('.search-main .prices').data('value');
//    		 var number =$('.search-main .number').data('value');
//    		 
//			 var url = '/' + city + '/search/venue';
//			 if( act != '' ) {
//				 url += '_actType-' + act;
//			 }
//			 if( peo != '' ) {
//				 url += '_people-' + peo;
//			 }
//			 if( store != '' ) {
//				 url += '_storeType-' + store;
//			 }
//			 alert(url);
//			 location.href=url;
//			 return false;
//    	  }else{
//    		  alert();
//	         return false;
//    	  }
//      }
//});
//下一步
var firstNext=$('.first-step').find('.next-btn');
firstNext.click(function(){
	var onNext=true;
	  var j = 0;
	  var stepdata_div=$('.first-step').find('.form-control');
	  $('.error-text').remove();
	  for (var i = 0; i < stepdata_div.length; i++) {
	    if (stepdata_div[i].value == "") {
	    	j++;
	    	$(stepdata_div[i]).parent().append('<span class="error-text">不能为空</span>');
	    }/*else{
	    	if($(stepdata_div[i]).val()=='不限'&&$(stepdata_div[i]).hasClass('demand-disName')){
		    	j++;
		    	$(stepdata_div[i]).parent().append('<span class="error-text">请选择区县</span>');
	    	}
	    }*/
	  }
	  if (j > 0) {
	    onNext=false;
	  }else{
	     onNext=true;
	  }
	
	if(onNext){
	  $('.first-step').hide().siblings('.second-step').show();
	  loadDetail();
	}
});
//返回上一步
var back=$('.second-step .back');
back.click(function(){
  $(this).parent().hide().siblings(".first-step").show();
})
//发需求提交
$('.publish-form').submit(function(){
      var  step2data_div=$('.second-step .bot').find('.form-control');
      $('.error-text').remove();
       var j = 0;
            for (var i = 0; i < step2data_div.length; i++) {
        if (step2data_div[i].value == "") {
              $(step2data_div[i]).parent().append('<span class="error-text">不能为空</span>');
                j++;
        }
      }
      if (j > 0) {
        return false;
      }else{
         return;
      }
});
/*首页轮播图*/
var featureLi;
var featureA;
var feature;
var len;
var setRun;
var featureBg;
var index=0; 
function loadSlideOnlineValues(){
	var _htmlSpan='';
	var _html='';
	var _htmlBg='';
    for(var i = 0; i <imgUrl.length; i++){
    	
      var _html = _html+'<a href="'+imgLink[i]+'" class="a_bigImg" target="_blank"><img src="'+imgUrl[i]+'"></a>';
//    var _html = _html+'<a href="'+imgLink[i]+'" class="a_bigImg" target="_blank"><img src="http://img.taohuichang.com/temp/store/2015/11/12/orl_1511121025261447295126330_628_285.jpg"></a>';
    }
    for(var i = 0; i <imgUrl.length; i++){
        var _htmlSpan = _htmlSpan+'<li><span></span></li>';
    }
    for(var i =0; i <imgUrl.length; i++){
    	  var _htmlBg = _htmlBg+'<li></li>';
    }
    //alert(_html);
      //初始化
    feature = $('#feature-focus').find('.container');
    feature.append(_html).find('.ul_change').append(_htmlSpan);
    feature.siblings('.feature-bg').append(_htmlBg);
    featureLi = feature.find('.ul_change').children('li');
    featureA = feature.find('a');
    featureBg = feature.siblings('.feature-bg').children('li');
    len = featureA.length;
    featureLi.eq(0).addClass('on');
    featureA.css({zIndex: '4', opacity: '0'}).eq(0).css({zIndex: '5', opacity: '1'});
    featureBg.css({zIndex: '4', opacity: '0'}).eq(0).css({zIndex: '5', opacity: '1',backgroundImage:'url('+imgUrl2[0]+')'});
  
    if (len > 1) {
    	var changeW = $('.ul_change').width();
    	$('.ul_change').css({display: 'block', marginLeft: '-' + changeW / 2 + 'px'});
    }
  
    feature.hover(function() {
        clearInterval(setRun);
    },
    function() {
        setRun = setInterval(autochange, 5000);
    });
      
    featureLi.click(function() {
        index = $(this).index();
        //console.log(index+'/');
        $(this).addClass('on').siblings().removeClass('on');
        featureA.eq(index).css({zIndex: '5'}).fadeTo(800, 1, function() {}).siblings('a').css({zIndex: '4'}).fadeTo(800, 0, function() {});
        featureBg.eq(index).css({zIndex: '5',backgroundImage:'url('+imgUrl2[index]+')'}).fadeTo(800, 1, function() {}).siblings().css({zIndex: '4'}).fadeTo(800, 0, function() {});
    });
    var setRun = setInterval(autochange, 5000);
}
//定时器
var autochange = function() {
    index = (index + 1) % len;
	//console.log(index);
    featureA.eq(index).css({zIndex: '5'}).fadeTo(800, 1, function() {}).siblings('a').css({zIndex: '4'}).fadeTo(800, 0, function() {});
    featureBg.eq(index).css({zIndex: '5',backgroundImage:'url('+imgUrl2[index]+')'}).fadeTo(800, 1, function() {}).siblings().css({zIndex: '4'}).fadeTo(800, 0, function() {});
    featureLi.eq(index).addClass('on').siblings().removeClass('on');
}

/*返回顶部 */
function a(x,y){
  $('#tbox').css('right',x+ 'px');
  $('#tbox').css('bottom',y + 'px');
}
function b(){
  t = $(document).scrollTop();
  if(t >500){
    $('#tbox').fadeIn('slow');
  }else{
      $('#tbox').fadeOut('slow');
  }
}
$(document).ready(function(e) {   
  a(40,40);//#tbox的div距浏览器底部和页面内容区域右侧的距离
  b();
  $('#gotop').click(function(){
    $(document).scrollTop(0); 
  });
});
$(window).resize(function(){
  a(40,40);//#tbox的div距浏览器底部和页面内容区域右侧的距离
});

$(window).scroll(function(e){
  b();    
})


/*一站式服务*/
var cityTips=$('.change-city .tip');
var cityTipsLen=cityTips.length;
var cityIndex=0;
setInterval(function () {
   cityIndex=(cityIndex+1)%cityTipsLen;
$(cityTips[cityIndex]).removeClass('hide').siblings('.tip').addClass('hide');
},3000);
