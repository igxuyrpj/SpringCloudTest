
var isvalidate1=false;
var isGetYzm=false;
$( function() {
	var citySp = $.cookie( 'currentCitySp' );
	loadSlideOnlineByCache();
	loadDistrint(cityId);
	//加载城市场地
	showVenues('','5','',cityId);
	
	
	//城市切换效果
	$('#re-cityList-venues .clearfix li span').on('click',function (){
		$('#re-cityList-venues .clearfix li').removeClass('current');
		$(this).parent().addClass('current');
		$("#re-cityList-venues .cyList").addClass('hide');
		$('#re-cityList-venues .'+$(this).attr('data')).removeClass('hide');
	});

	//查询城市场地数据
	$('#re-cityList-venues').on('click',' ul li a',function (){
		showVenues('100001000051','5','100000001,100000002,100000003,100000004,100000005,100000006,100000007',$(this).data('role'));
	});
	//查询城市场地数据
	$('.recommend-r a').on('click',function (){
		if($(this).hasClass('recommend-r-more')){
			return false;
		}
		$('.recommend-r a').removeClass('active');
		$(this).addClass('active');
		showVenues('','5','',$(this).data('role'));
	});
	//搜索找场地切换城市
	$('.demand-citys').on('click' ,'li a',function (){
		$('.demand-disName').val('');
		$('.demand-cityId').val($(this).data('id'));
		$('.demand-cityId').data('py',$(this).data('py'));
		//$('.demand-cityName').val($(this).parent().parent().parent().find('.demand-cityName').val());
		$('.demand-cityName').val($(this).html());
		loadDistrint($(this).data('id'));
		$(this).parent().parent().find('a').removeClass('current');
		$(this).addClass('current');
	});
	//点击区域
	$('.demand-dis').on('click' ,'li a',function (){
		$('.demand-disId').val($(this).data('id'));
		$('.demand-disName').val($(this).parent().parent().parent().find('.demand-disName').val());
		$(this).parent().parent().find('a').removeClass('current');
		$(this).addClass('current');
	});
	$('.prices').on('click' ,'li a',function (){
		$(this).parent().parent().parent().find('.demand-prices').data('value',$(this).parent().attr('data'));
	});
	$('.act').on('click' ,'li a',function (){
		$(this).parent().parent().parent().find('.demand-act').data('value',$(this).parent().attr('data'));
	});
	
	$('.number').on('click' ,'li a',function (){
		$(this).parent().parent().parent().find('.demand-number').data('value',$(this).parent().attr('data'));
	});
	//首页首屏左边查询条件JS交互（开始）
	$('.search-main .submit-btn').on('click',function(){
	      var j = 0;
	      var isS=false;
	      var data_div=$('.search-form').find('.form-control');
	      $('.error-text').remove();
	      for (var i = 0; i < data_div.length; i++) {
		    if($(data_div[i]).hasClass('notNull') ){
			    continue;
		    } 
	        if (data_div[i].value == "") {
	          j++;
	          $(data_div[i]).parent().append('<span class="error-text">不能为空</span>');
	        }
	      }
	      if (j > 0) {
	        return false;
	      }else{
     		 var city = $('.search-main .demand-cityId').data('py');
    		 var dis = $('.search-main .demand-disId').val();
    		 var act =$('.search-main .demand-act').data('value');
    		 var gmtBegin =$('.search-main .beginTime').val();
    		 var gmtEnd =$('.search-main .endTime').val();
    		 var ys1 =$('.search-main .demand-prices').data('value');
    		 var peo =$('.search-main .demand-number').data('value');
			 
			 
			 //window.location.href="plus/venue.php?cid="+city+"&dlwz="+dis+"&cdlx="+act+"&rs="+peo;
			 window.open("plus/venue.php?cid="+city+"&dlwz="+dis+"&cdlx="+act+"&rs="+peo);
			 
			 
	      }
	});
	//首页首屏左边查询条件JS交互（结束）
	
	//获取动态码
	$('.msg-code-btn1').on('click',function (e){
	  var $this=$(this);
     
    var mobile=$this.parent().parent().parent().find('.m-phone').val()

     if (mobile.trim()=='') {
	      layer.msg("手机号码不能为空！");
	      return false;
	 }

	 var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
	 if (!reg.test(mobile)) {
	      layer.msg("手机号码错误！");
	      return false;
	 }
	 if($(this).text()!='发送验证码'){
    		return false;
     }

		$.ajax({
	       dataType: 'text',
	       data: 'mobile=' + $this.parent().parent().parent().find('.m-phone').val(),
	       url: '/plus/dataAjax.php?flag=sendYzm',
	       success: function(data) {
	    	     layer.msg(data);
	    	       $(".msg-code-btn1").css("background","#999");
		    	   var waitSecond = 60;
				   var intervalId = setInterval(function () { 
					waitSecond--; 
						if(waitSecond > 0) {
						   $(".msg-code-btn1").text("验证码（"+waitSecond+"） ") ;
						}else{ 
						   $(".msg-code-btn1").text('发送验证码') ; 
						   $(".msg-code-btn1").css("background","#FF7802");
						clearInterval(intervalId); 
					  } 
				   }, 1000);
	    	     
       		}
	       
        })
	      
	      
	});
	
	
	
	 $('.btn-submit-btn').on('click',function (){
	 	 
	 var code=$("input[name=check-phone]").val();
	 if (code.trim()==='') {
	      layer.msg("验证码不能为空！");
	      return false;
	  }
	 
	 var index = layer.load(2); 
	 $.ajax({
	       dataType: 'text',
	       data: 'code='+code,
	       url: '/plus/dataAjax.php?flag=checkYzm',
	       success: function(data) {
	       	   if(data=='1'){
	       	   	    layer.close(index);
	       	   		submitFormxiuqiu();
	       	   }else{
	       	     layer.close(index);
	       	   	 layer.msg('验证码错误！');
	       	   }
       		}
        })
		
	});
	
	//关闭发需求页面
	$('.close').on('click',function (){
		if($(this).parent().find('.demand-main').length>0){
			$(this).parent().find('.demand-main .first-step').show();
			$(this).parent().find('.side-show-ad').show();
			$(this).parent().find('.demand-main .second-step').hide()
			$(this).parent().find('.back-info').hide();
		}
	});
	
	//显示input框的底部boder
	
	$('body').bind("click",function(e){
		var target = $(e.target);
		if(target.closest(".check-box").length == 0){
			$('.check-box:visible').siblings('.form-control').removeClass('bodn');
		}
	});
});


function loadCityValues(){
	if($('.demand-cityName').val()!=''){
		$('.demand-citys li a').each(function (){
			if($(this).text()==$('.demand-cityName').val()){
				$('.demand-cityId').val($(this).data('id'));
				$('.demand-cityId').data('py',$(this).data('py'));
			}
		});
	}

	if($('.demand-disName').val()!=''){
		$('.demand-dis li a').each(function (){
			if($(this).text()==$('.demand-disName').val()){
				$('.demand-disId').val($(this).data('id'));
			}
		});
	}
	if($('.demand-act').val()!=''){
		$('.act li a').each(function (){
			if($(this).text()==$('.demand-act').val()){
				$('.demand-act').data('value',$(this).parent().attr('data'));
			}
		});
	}
	
}


function submitFormxiuqiu(){
	
	
	 var index = layer.load(2); 
	validate1($this.parent().parent().parent().find('.m-phone'));
	if(!isvalidate1){
		$(this).removeClass('no-submit');
		return false;
	}
	if(''!=$('.demand-main .demand-number').data('value')){
		var strs= new Array(); //定义一数组
		strs=$('.demand-main .demand-number').data('value').split(",");
		if(strs[0]!='A'){
			$('#peopleMinCount').val(strs[0]);
		}else{
			$('#peopleMinCount').val(0);
		}
		if(strs[1]!='A'){
			$('#peopleMaxCount').val(strs[1]);
		}
	}
	if(''!=$('.demand-main .demand-prices').data('value')){
		var strs= new Array(); //定义一数组
		strs=$('.demand-main .demand-prices').data('value').split(",");
		if(strs[0]!='A'){
			$('#budgetMin').val(strs[0]);
		}else{
			$('#budgetMin').val(0);
		}
		if(strs[1]!='A'){
			$('#budgetMax').val(strs[1]);
		}
	}
	var data='cityId='+$('.demand-main .demand-cityId').val()
			+'&city='+$('.demand-main .demand-cityName').val()
			+'&eventType='+$('.demand-main .demand-act').val()
			+'&gmtEventBegin='+$('.demand-main .demand-beginTime').val()
			+'&gmtEventEnd='+$('.demand-main .demand-endTime').val()
			+'&budgetMin='+$('#budgetMin').val()
			+'&budgetMax='+$('#budgetMax').val()
			+'&peopleMinCount='+$('#peopleMinCount').val()
			+'&peopleMaxCount='+$('#peopleMaxCount').val()
			+'&phone='+$('.m-phone').val()
			+'&type=FAST_RELEASE'
			+'&source=WEB_HOME'
			+'&isCounseling=T'
			+'&tdays='+$('.t-days').html();
	var data1='cityId='+$('.demand-main .demand-cityId').val()
			+'&eventType='+$('.demand-main .demand-act').val()
			+'&useBeginTime='+$('.demand-main .demand-beginTime').val()
			+'&useEndTime='+$('.demand-main .demand-endTime').val()
			+'&moneyBegin='+$('#budgetMin').val()
			+'&moneyEnd='+$('#budgetMax').val()
			+'&numberBegin='+$('#peopleMinCount').val()
			+'&numberEnd='+$('#peopleMaxCount').val()
			+'&size=3';
	if($('.demand-main .demand-disId').val()!=-1){
		data+='&districtId='+$('.demand-main .demand-disId').val()
		+'&districtType=行政区'
		+'&district='+$('.demand-main .demand-disType').val();		
	}
	
	var chk_value =[];    
	$('input[name="hobby[]"]:checked').each(function(){    
	  chk_value.push($(this).val());    
	}); 
	var project = chk_value.join(',');
	data += '&project='+project;
    data += '&gsname='+$("#gsname").val();
    
	$.post('/plus/dataAjax.php?flag=insertXuqiu',data,function (result){
		if(result=='1'){
			layer.close(index);
			layer.msg('提交需求成功！', {
			  time: 3000 
			}, function(){
			   window.location.href='/xuqiu/18.html';
			}); 
			
		}else{
			 layer.close(index);
    		 layer.msg('提交需求失败！');
		}
	});
}

function runner(el) {
    if(clickTimeout) {
      clearTimeout(clickTimeout)
      clickTimeout = undefined
    }
    if(idx > 0) {
      el.text(idx + '秒后重新获取')
      idx -= 1
      el.addClass('msg-code-btn-disable')
      clickTimeout = setTimeout(function() {
        runner(el)
      }, 1000)
    } else {
      el.text('获取短信验证码')
      el.removeClass('msg-code-btn-disable')
      idx = 60
      return
    }
  }


function showVenues(cateId,size,lev,cityId){
	venuesHtml=[];
	if(cityId==''){
		cityId=394;
	}
	$.post( '/plus/dataAjax.php','flag=showVenues&cid='+cityId, function( result ) {
		if(null!=result&&result.length>0){
			result =  eval( "(" + result + ")" );
			for(var i=0;i<result.length;i++){
				venue=result[i];
				var url = '/detail/' + venue.id +'-'+cityId+'.html';
				var cls='';
				if(i==0){
					cls='first';
				}
				if(i==1){
					cls='two';
				}
				cls='three';
				var imgUrl='/static/images/newtwo/perch400x300.jpg';
				if(null!=venue.gallerie&&venue.gallerie!=''){
					imgUrl = venue.gallerie;
				}
				var vHtml='<li class="'+cls+'">'
							+'<img alt="'+venue.name+'" src="'+imgUrl+'" />'
							+'<div class="recommend-mask"></div>'
							+'<div class="bot">'
								+'<div class="site-name">'+trimNullTenf(venue.name,15)+'</div>'
								+'<p>'+trimNullTenf(venue.description,18)+'</p>'
								/*+'<p class="p2">'+venue.district+'&nbsp;容纳人数'+venue.maxPeople+'&nbsp;活动场地'+venue.productCount+'</p>'*/
								+'<a href="'+url+'" target="_blank">查看详情</a>'
							+'</div>'
						+'</li>'
				venuesHtml[i]=vHtml;
			}
		}
		$('.venuesInfo').html(venuesHtml.join(''));
	});
}

/*var imgUrl=[];
var imgLink=[];
var bgcolor=[];
var imgUrl2=[];*/
///加载幻灯片
function loadSlideOnlineByCache(){
	
	
	
	loadSlideOnlineValues();
	/*$.post('/home/querySlideOnlineByCache','width=950&height=453', function(result) {
	      if (result.length > 0) {
	        for (var i = 0; i < result.length; i++) {
	        	var sd=result[i];
	        	imgUrl[i]=sd.mainGalleryUrlCdn;
	        	imgLink[i]=sd.mainGalleryLink;
        		bgcolor[i]=sd.backgroundColor;
        		imgUrl2[i]=sd.subjoinGalleryUrlOne;
	        }
	      }
	      loadSlideOnlineValues();
    });*/
}


function loadDistrint(cityId){
	if(cityId==''||cityId=='1'){
		cityId='22441';
	}
	// 加载区
	$.post( "/plus/dataAjax.php ", {"id": cityId,"flag":"getQuyu"}, function( result ) {
		
		result = eval("(" + result + ")");
		if( result.success ) {
			var region = [];
			if( result.regions != null && result.regions.length > 0 ) {
				for( var i = 0; i < result.regions.length; i++ ) {
					region[ i ] = '<li><a href="javascript:;" data-id="'+result.regions[ i ].id+'">'+result.regions[ i ].name+'</a></li>';
				}
			}
			$( ".demand-dis" ).html( '<li><a href="javascript:;" data-id="-1">不限</a></li>'+region.join( "" ) ).find("li").find('a').click(function(){
				   inputCheck($(this));
			}).parents('body').bind("click",function(e){
				var target = $(e.target);
				if(target.closest(".check-box").length == 0){
					$(".check-box").hide();
				}
			});
			$( ".demand-dis2" ).html( '<li><a href="javascript:;" data-id="-1">不限</a></li>'+region.join( "" ) ).find("li").find('a').click(function(){
				   inputCheck($(this));
			}).parents('body').bind("click",function(e){
				var target = $(e.target);
				if(target.closest(".check-box").length == 0){
					$(".check-box").hide();
				}
			});
			
			
			/*$( ".demand-dis2" ).html( region.join( "" ) ).find("li").find("li").find('a').click(function(){
				   inputCheck($(this));
			}).parents('body').bind("click",function(e){
				var target = $(e.target);
				if(target.closest(".check-box").length == 0){
					$(".check-box").hide();
				}
			});*/
		}
	} );
}

function loadDetail(){
     var city = $('.demand-main .demand-cityName').val();
	 var dis = $('.demand-main .demand-disName').val()=='不限'?'':$('.demand-main .demand-disName').val();
	 var act =$('.demand-main .demand-act').val();
	 var gmtBegin =$('.demand-main .demand-beginTime').val();
	 var gmtEnd =$('.demand-main .demand-endTime').val();
	 var ys1 =$('.demand-main .demand-prices').val();
	 var peo =$('.demand-main .demand-number').val();
	 if(new Date( gmtBegin ).Format( "yyyy年MM月dd" )==new Date( gmtEnd ).Format( "yyyy年MM月dd" )){
		 $('.t-actTime').html(new Date( gmtBegin ).Format( "yyyy年MM月dd" ));
	 }else{
		 $('.t-actTime').html((new Date( gmtBegin ).Format( "yyyy年MM月dd" )+'至'+new Date( gmtEnd ).Format( "yyyy年MM月dd" )));
	 }
	 
	 $('.t-city').html(city+dis);
	 if((parseInt( new Date( gmtEnd ).Format( "yyyy" ) )-parseInt( new Date( gmtBegin ).Format( "yyyy" ) ))>0){
		 $('.t-days').html((parseInt( new Date( gmtEnd ).Format( "yyyyMMdd" ) )-parseInt( new Date( gmtBegin ).Format( "yyyyMMdd" ) ))-8868);
	 }else{
		 $('.t-days').html((parseInt( new Date( gmtEnd ).Format( "yyyyMMdd" ) )-parseInt( new Date( gmtBegin ).Format( "yyyyMMdd" ) ))+1);
	 }
	 $('.t-prices').html(ys1);
	 $('.t-act').html(act);
	 $('.numbers').html(peo);
}

/* 截取 */
function trimNullTenf( val, size ) {
	if( val == "" || val == null )
		return "";
	else {
		if( val.length > size ) {
			var address = val.substring( 0, size ) + "..."
			return address;
		} else {
			return val;
		}
	}

}
function validate1(el) {
    if(el.val() == '') {
      if(!el.hasClass('null')){
        showError1(el)
        isvalidate1=false;
      }else{
          hideError(el)
          isvalidate1=true;
      }
    } 
    else if(!new RegExp(el.attr('data-rule')).test(el.val())) {
      showError1(el, 'rule')
      isvalidate1=false;
    }else {
      if($(el).hasClass('pwd2')){
    	  //alert($(el).parent().parent().find('.new-password').val());
    	  if($(el).val()!=$(el).parent().parent().find('.new-password').val()){
    		  showError1(el,"compare");
              isvalidate1=false;
    	  }else{
              hideError(el);
              isvalidate1=true;
    	  }
      }else if($(el).hasClass('endTime')){
    	  if(new Date($('#beginTime1').val())>new Date($('#endTime1').val())){
    		  showError1(el,"date");
    		  isvalidate1=false;
    	  }else{
              hideError(el);
              isvalidate1=true;
    	  }
      }else{
          hideError(el);
          isvalidate1=true;
      }
    }
}
function showError1(el, cate, callback) {
	$('.tips-normal').addClass('hide');
    var split = el.attr('data-error').split('|')
    el.parent().find('.error-tips').removeClass('hide').text(split[0])
    if(arguments[1] == 'rule') el.parent().find('.error-tips').removeClass('hide').text(split[1])
    else if(arguments[1] == 'compare') el.parent().find('.error-tips').removeClass('hide').text(split[2])
    else if(arguments[1] == 'date') el.parent().find('.error-tips').removeClass('hide').text(split[1])
    else if(arguments[1] == 'ajax') {
      callback && callback(el)
    }
    el.focus();
    el.addClass('error-bor error-fade')
}

function hideError(el) {
  el.removeClass('error-bor error-fade')
  el.parent().parent().find('.error-tips').addClass('hide').text('')
}
Date.prototype.Format = function( fmt ) { // author: meizz
	var o = {
		"M+": this.getMonth() + 1, // 月份
		"d+": this.getDate(), // 日
		"h+": this.getHours(), // 小时
		"m+": this.getMinutes(), // 分
		"s+": this.getSeconds(), // 秒
		"q+": Math.floor( ( this.getMonth() + 3 ) / 3 ), // 季度
		"S": this.getMilliseconds()
	// 毫秒
	};
	if( /(y+)/.test( fmt ) )
		fmt = fmt.replace( RegExp.$1, ( this.getFullYear() + "" ).substr( 4 - RegExp.$1.length ) );
	for( var k in o )
		if( new RegExp( "(" + k + ")" ).test( fmt ) )
			fmt = fmt.replace( RegExp.$1, ( RegExp.$1.length == 1 ) ? ( o[ k ] ) : ( ( "00" + o[ k ] )
					.substr( ( "" + o[ k ] ).length ) ) );
	return fmt;
}