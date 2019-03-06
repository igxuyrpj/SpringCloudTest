//最后一项去掉边框开始
function botBorder(o) {
	o.last().css('border', 'none');
}
var articleA=$('.hot-article li a');
var releaseRow=$('.release-line .release-row');
botBorder(articleA);
botBorder(releaseRow);
//最后一项去掉边框结束
/*需求表单开始*/
var inputSlect=$('.release-row .select');
inputSlect.click(function() {
	var otherSelect=$(this).parent().siblings().find('.select-box');
	if(!(otherSelect.hasClass('hide'))){
		otherSelect.addClass('hide');
	}
	$(this).siblings('.select-box').toggleClass('hide').click(function(e) {
           e.stopPropagation();
        });
        return false;
});
//赋值
var selectLi=$('.release-row .select-box li');
selectLi.click(function() {
	var val=$(this).text();
	$(this).parent().toggleClass('hide').siblings('.select').val(val);

});
//页面点击关闭
      function allClose(obj){
     if (obj.is(":visible")) {
            obj.addClass('hide');
        }
  }
    $(document).click(function(e) {
        e = e || window.event;
allClose($('.select-box'));
    });

/*需求表单结束
表单检测开始
$('#release-form').verify({
            fields:{
                选中名字字段，设置校验规则,
                'input[name="activity-city"]':{
                    message:'请输入城市(中文)',
                    test:function(val){
                      var reg = /[\u4e00-\u9fa5]{2}/;
        return reg.test(val);
                    }
                },
                'input[name="activity-contacts"]':{
                      message:'请输入姓名(中文)',
                    test:function(val){
                      var reg = /[\u4e00-\u9fa5]{2}/;
        return reg.test(val);
                    }
                },
                'input[name="activity-number"]':{
                      message:'只能为整数',
                    test:function(val){
                      var reg =/^[0-9]*[1-9][0-9]*$/;
                    if(val==''){
                      return true;
                    }else{
        return reg.test(val);
                    }
                    }
                },
            
                 'input[name="activity-budget"]':{
                      message:'最多2位小数或正整数',
                    test:function(val){
                      var reg =/^(\d|([1-9]\d+))(\.\d{1,2})?$/;
                    if(val==''){
                      return true;
                    }else{
        return reg.test(val);
                    }
                    }
                },
                'input[name="activity-phone"]':{
                      message:'输入手机号码',
                    test:function(val){
                      var reg =/^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|18[0-9]{9}$/;
                    if(val==''){
                      return true;
                    }else{
        return reg.test(val);
                    }
                    }
                },

                         'input[name="activity-yzm"]':{
                    message:'不能为空',
                    test:function(val){
                      var reg = /[\w\W]+/;
        return reg.test(val);
                    }
                }
            },
            errorTemplate:function(error){
                // 错误模板
                return $('<div class="wrong">' + error.message +'<div class="arrow1"></div> <div class="arrow2"></div>'+ '</div>');
            },
            submitButton: '.submit-btn'   //提交按钮
        });
表单检测结束*/
/*返回顶部开始*/
function a(x,y){
  $('#top-box').css('right','40px');
  $('#top-box').css('bottom','40px');
}
function b(){
  t = $(document).scrollTop();
  if(t >450){
    $('#top-box').fadeIn('slow');
  }else{
      $('#top-box').fadeOut('slow');
  }
}
$(document).ready(function(e) {   
  var o_w=($(document).width()-1200)/2+200;
  a(o_w,150);//#top-box的div距浏览器底部和页面内容区域右侧的距离
  b();
  $('#go-top').click(function(){
   $("html,body").animate({scrollTop:0},500);
  });
});
$(window).resize(function(){
   o_w=($(document).width()-1200)/2+200;
  a(o_w,150);//#top-box的div距浏览器底部和页面内容区域右侧的距离
});

$(window).scroll(function(e){
  b();    
})
/*返回顶部结束*/
/*发布需求*/
var isValidate4=false;
var clickTimeout;
var isGetYzm=false;
var idx = 60;
$(function (){
	var input = $('.release-form [data-require]');
	
	
	
	//登陆或者注册
	$('.submit-btn').on('click',function (){
		var $this=$(this);
		if($(this).hasClass('no-submit')){
			return false;
		}
		$(input).each(function (){
			validate4($(this));
			if(!isValidate4){
				return false;
			}
		});
		$(this).addClass('no-submit');
		if($(this).parent().parent().find('.loginType').val()=='register'){
			var yd='PC_NEWS';
			$.post('/thc/reservationRegister','mobile='+$('.activity-phone').val()+"&d-code="+$('.activity-yzm').val()+'&isyd='+yd,function (result){
				if(result.code=='0'){
					$('.msg-code-btn1').parent().parent().remove();
					$('.loginType').val('');
					//submitForm();
	            }else{
	            	$('.btn-submit-btn').removeClass('no-submit');
					$('.y-code').addClass('error-bor error-fade');
					$('.btn').parent().parent().parent().find('.error-tips').removeClss('hide').text(result.message);
				}
			});
		}else if($(this).parent().parent().find('.loginType').val()=='login'){
			var data="username="+$('.activity-phone').val()+"&code="+$('.activity-yzm').val() +"&yzm=1";
			$.post('/thc/loginByCode',data,function (result){
				if(result.code=='0'){
					$('.msg-code-btn1').parent().parent().remove();
					$('.loginType').val('');
				//	submitForm();
				}else{
					$('.btn-submit-btn').removeClass('no-submit');
					$('.y-code').addClass('error-bor error-fade');
					$('.sub-login .error-tips').removeClass('hide').text(result.message);
				}
			});
		}else{
		//	submitForm();
		}
	});
});
function validate4(el) {
	if(el.val() == '') {
      showError4(el)
      isValidate4=false;
    } 
    else if(!new RegExp(el.attr('data-rule')).test(el.val())) {
      showError4(el, 'rule')
      isValidate4=false;
    }else {
    
      hideError4(el)
      isValidate4=true;
    }
}
function showError4(el, cate, callback) {
	$('.wrong').addClass('hide');
    var split = el.attr('data-error').split('|')
    el.parent().find('.wrong').removeClass('hide').find('span').text(split[0])
    if(arguments[1] == 'rule') el.parent().find('.wrong').removeClass('hide').find('span').text(split[1])
    else if(arguments[1] == 'compare') el.parent().find('.wrong').removeClass('hide').find('span').text(split[2])
    else if(arguments[1] == 'date') el.parent().find('.wrong').removeClass('hide').find('span').text(split[1])
    else if(arguments[1] == 'ajax') {
      callback && callback(el)
    }
    el.focus();
}

function hideError4(el) {
  el.parent().parent().find('.wrong').addClass('hide').find('span').text('')
}

function runner1(el) {
	if(clickTimeout) {
	  clearTimeout(clickTimeout)
	  clickTimeout = undefined
	}
	if(idx > 0) {
	  el.text(idx + 's')
	  idx -= 1
	  el.addClass('msg-code-btn-disable')
	  clickTimeout = setTimeout(function() {
	    runner1(el)
	  }, 1000)
	} else {
	  el.text('获取验证码')
	  el.removeClass('msg-code-btn-disable')
      idx = 60
      return
    }
  }

//获取动态码
$('.msg-code-btn1').on('click',function (e){
	var $this=$(this);
	if($this.hasClass('msg-code-btn-disable')){
		return false;
	}
	validate1($this.parent().parent().parent().find('.m-phone'));
	if(!isValidate4){
		return false;
	}
	$.post('/thc/checkUser','username='+$this.parent().parent().parent().find('.m-phone').val(),function (result){
		if(result.code=='0'){
			$.post('/thc/demandVerificationCode','mobile='+$this.parent().parent().parent().find('.m-phone').val(),function (result){
				if(result.code=='0'){
					isGetYzm=true;
		  	        runner1($('.msg-code-btn1'));
		  	        $this.parent().find('.loginType').val('register');
	            }
			});
		}else{ 
			$.ajax({
		       dataType: 'json',
		       data: 'mobile=' + $this.parent().parent().parent().find('.m-phone').val(),
		       url: '/thc/loginCode',
		       success: function(data) {
		    	   if(data.code=='0'){
		  	    	 isGetYzm=true;
		  	         runner1($('.msg-code-btn1'));
			  	     $this.parent().find('.loginType').val('login');
	               }
	       		}
	       })
		}
	});
});
