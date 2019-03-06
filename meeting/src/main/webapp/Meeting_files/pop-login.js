var idx = 60;
var isvalidate=false;
var clickTimeout;
var isGetYzm=false;
var isReload=false;
var cwCount=0;
function runner(el) {
  if(clickTimeout) {
    clearTimeout(clickTimeout)
    clickTimeout = undefined
  }
  if(idx > 0) {
    el.html('<span style="color:#ff7900;">'+ idx + '</span>秒后重新获取')
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

function changeCode($this){
	$('.codeImg').attr('src','/auth/code?n='+Math.random(1000));
}
//改变验证码状态
function changeCodeState(cwCount){
	if(cwCount>=3){
		changeCode();
		$('.codeBox').removeClass('hide');
	}
}


$(function (){
/*	$('.login-pop-dialog .v-code').on('click',function (){
		changeCode();
	});*/
	$('.codeImg').on('click',function (){
		changeCode();
	});
	$('.changeCode').on('click',function (){
		changeCode();
	});
	//绑定登录弹窗
	$('[data-id=login-pop-dialog]').popDialog();
	$('[data-id=search-pop-dialog]').popDialog();
	$('.pop-close').on('click',function (e){

		 $(document.body).css({
			   "overflow-y":"auto"
			 });
		$('.tips-normal').removeClass('hide');
		$('.error-tips').addClass('hide');
		$('.txt').removeClass('error-bor').removeClass('error-fade');
		$('.pop-step').addClass('hide');
		$('.pop-step:eq(0)').removeClass('hide');
		$('.nav').removeClass('hasOrder');
		$('.login-pop-dialog .code').val('');
		$('.login-pop-dialog .y-code').val('');
		
		if(isReload){
			location.reload();
		}
	});

	//获取动态码
	$('.getPass').on('click',function (e){
		var $this=$(this);
		if($(this).hasClass('msg-code-btn-disable')){
			return false;
		}
		validate3($('#username-pop'));
		if(!isvalidate){
			return false;
		}
		$.post('/thc/checkUser','username='+$('#username-pop').val(),function (result){
			//0代表可以注册，1代表已注册
			if(result.code=='0'){
				$.post('/thc/demandVerificationCode','mobile='+$('#username-pop').val(),function (data){
					if(result.code=='0'){
						isGetYzm=true;
			  	        $('.loginType').val('register');
			  	        runner($('.getPass'));
		            }else{
		       		   	$this.parent().find('.subTip').show().text(data.message);
		            }
				});
				//提示用户先注册
      		   	/*$this.parent().parent().find('.error-tips').removeClass('hide').text('请您先注册后再登陆！！！');
				return false;*/
			}else if(result.code=='-1'){
				if(isvalidate){
				   $.ajax({
				       dataType: 'json',
				       data: 'mobile=' + $('#username-pop').val(),
				       url: '/thc/loginCode',
				       success: function(data) {
				    	   if(data.code=='0'){
				  	    	 isGetYzm=true;
					  	     $('.loginType').val('login');
				  	         runner($('.getPass'));
			               }else{
			       		   	 $this.parent().find('.subTip').show().text(data.message);
			               }
			       		}
			       });
				}
			}
		});
	})
	$('.loginBtn').on('click',function (e){
		if($(this).hasClass('onLogin')){
			return false;
		}else{
			$(this).addClass('onLogin');
		}
		
		var $this=$('#login-pop-dialog');
		validate3($('#username-pop'));
		if(!isvalidate){
			$('.loginBtn').removeClass('onLogin');
			return false;
		}
		var fag=$('#loginType').val();
		if(fag=='1'){
			validate3($('#password-pop'));
		}else{
			validate3($('#stateWord'));
		}
		if(!isvalidate){
			$('.loginBtn').removeClass('onLogin');
			return false;
		}
		var yzm="";
		if(!$('#code-pop').parent().hasClass('hide')){
			validate3($('#code-pop'));
			if(!isvalidate){
				$('.loginBtn').removeClass('onLogin');
				return false;
			}
			yzm="&yzm="+$('#code-pop').val();
		}else{
			yzm="&yzm=1";
		}
		if(fag=='1'){
			var data="username="+$('#username-pop').val()+"&password="+$.md5( $('#password-pop').val() )+yzm;
			$.post('/thc/newLogin',data,function (result){
				if(result.code=='0'){
					//
					if($('.nav').hasClass('hasOrder')){
						if($('.nav').hasClass('comboDetail')){
							var data='phoneMob='+$('#phone').val()
							+'&sourceId='+$('#dqgoodsid').val()
							+'&groups='+$('#dqgroups').val()
							+'&name='+$('#dqgoodsname').val()
							+'&source='+$('#dqsource').val();

							if($('#sourceStoreId').length>0){
								if($('#sourceStoreId').val()!=''){
									data+="&sourceStoreId="+$('#sourceStoreId').val();
								}
							}
							if($('#isyd').val()=='0'){
								if($('#d12').length>0){
									data+='&startDate='+$('#d12').val();
								}
							}
							$.post( '/demand/create', data , function( result ) {
								if(result.code=='0'){
									$('.new-pop-dialog').addClass('hide');
									$('.new-pop-dialog:eq(0)').removeClass('hide');
									$('.pop-step').addClass('hide');
									$('.pop-step:eq(3)').removeClass('hide');
									isReload=true;
								}else{
									$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
								}
							});
						}else{
							var data='phone='+$('#phone').val()
							+'&productType='+$('#productType').val()
							+'&source='+$('#source').val()
							+'&type='+$('#type').val()
							+'&iscontact=T';
							
							if($('#isyd').val()=='0'){
								if($('#d12').length>0){
									data+='&startDate='+$('#d12').val();
								}
							}
							if($('#sourceStoreId').length>0){
								data+='&productId='+$('#sourceStoreId').val()
							}else{
								data+='&productId='+$('#dqgoodsid').val()
							}
							$.post( '/createDemandAjax', data , function( result ) {
								if(result.code=='0'){
									$('.new-pop-dialog').addClass('hide');
									$('.new-pop-dialog:eq(0)').removeClass('hide');
									$('.pop-step').addClass('hide');
									$('.pop-step:eq(3)').removeClass('hide');
									isReload=true;
								}else{
									$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
								}
							});
						}
					}else if($('.nav').hasClass('inquiryPrice-y')){
						$('.pop-close').trigger('click');
						$.post('/member/inquiryAjax', function(result) {
							if(null==result||result.length==0){
								$('#inquiry .dialog-addinquiry:eq(0)').removeClass('hide')
								$('#inquiry .dialog-addinquiry:eq(1)').addClass('hide')
							}else{
								$('#inquiry .dialog-addinquiry:eq(1)').removeClass('hide')
								$('#inquiry .dialog-addinquiry:eq(0)').addClass('hide')
								loadDemandValues(result);
							}
							$('[data-id=inquiry]').trigger('click');
						});
						$('.nav').removeClass('inquiryPrice-y')
					}else if($('.nav').hasClass('hasCollection')){
						$('.pop-close').trigger('click');
						isLogin=true;
						if($('.btn-collection').length==1){
							$('.btn-collection').trigger('click');
						}else{
							$('.btn-collection-'+$('.nav').attr('data')).trigger('click');
						}
					}else if($('.nav').hasClass('hasYudDing')){
						$('.pop-close').trigger('click');
						isLogin=true;
						isCalendarLogin=true;
						$('[data-id='+$('.nav').data('id')+']').trigger('click');
					}else if($('.nav').hasClass('hasComment')){
						$('.pop-close').trigger('click');
						isLogin=true;
						$('#bottomComent').trigger('click');
					}else if($('.nav').hasClass('hasCombo')){
						location.href='/order-init/combo-'+$('.combo-head').data('id')+'?date='+$('.date').val()+'&number='+$('.peo').val();
					}else if($('.top-bar').hasClass('freeDemand')){
						$('.closePop').trigger('click');
						isLogin=true;
						$(".popBg,.freePlacePop").show();
						$('.top-bar').removeClass('freeDemand')
					}else if($('.top-bar').hasClass('hasYudDing')){
						$('.closePop').trigger('click');
						isLogin=true;
						$('.top-bar').removeClass('hasYudDing')
						$('[data-id='+$('.nav').data('id')+']').trigger('click');
					}else{
						if($('.loginBtn').hasClass('goHome')){
							location.href='/';
						}else{
							$('.pop-close').trigger('click');
							location.reload();
						}
					}
					changeCode();
				}else if(result.code=='-2'){
					$('.codeTip').show().text(result.message);
					changeCode();
				}else{
					$('.passwordTip').show().text(result.message);
					cwCount=cwCount+1;
					changeCodeState(cwCount);
				}
				$('.loginBtn').removeClass('onLogin');
			});
		}else{
			if($('.loginType').val()=='login'){
				var data="username="+$('#username-pop').val()+"&code="+$('#stateWord').val() +yzm;
				$.post('/thc/loginByCode',data,function (result){
					if(result.code=='0'){
						if($('.nav').hasClass('hasOrder')){

							if($('.nav').hasClass('comboDetail')){
								var data='phoneMob='+$('#phone').val()
								+'&sourceId='+$('#dqgoodsid').val()
								+'&groups='+$('#dqgroups').val()
								+'&name='+$('#dqgoodsname').val()
								+'&source='+$('#dqsource').val();

								if($('#sourceStoreId').length>0){
									if($('#sourceStoreId').val()!=''){
										data+="&sourceStoreId="+$('#sourceStoreId').val();
									}
								}

								if($('#isyd').val()=='0'){
									if($('#d12').length>0){
										data+='&startDate='+$('#d12').val();
									}
								}
								$.post( '/demand/create', data , function( result ) {
									if(result.code=='0'){
										$('.new-pop-dialog').addClass('hide');
										$('.new-pop-dialog:eq(0)').removeClass('hide');
										$('.pop-step').addClass('hide');
										$('.pop-step:eq(3)').removeClass('hide');
										isReload=true;
									}else{
										$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
									}
								});
							}else{
								var data='phone='+$('#phone').val()
								+'&productId='+$('#sourceStoreId').val()
								+'&productType='+$('#productType').val()
								+'&source='+$('#source').val()
								+'&type='+$('#type').val()
								+'&iscontact=T';
								
								if($('#isyd').val()=='0'){
									if($('#d12').length>0){
										data+='&startDate='+$('#d12').val();
									}
								}
								$.post( '/createDemandAjax', data , function( result ) {
									if(result.code=='0'){
										$('.new-pop-dialog').addClass('hide');
										$('.new-pop-dialog:eq(0)').removeClass('hide');
										$('.pop-step').addClass('hide');
										$('.pop-step:eq(3)').removeClass('hide');
										isReload=true;
									}else{
										$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
									}
								});
							}
						}else if($('.nav').hasClass('inquiryPrice-y')){
							$('.pop-close').trigger('click');
							$.post('/member/inquiryAjax', function(result) {
								if(null==result||result.length==0){
									$('#inquiry .dialog-addinquiry:eq(0)').removeClass('hide')
									$('#inquiry .dialog-addinquiry:eq(1)').addClass('hide')
								}else{
									$('#inquiry .dialog-addinquiry:eq(1)').removeClass('hide')
									$('#inquiry .dialog-addinquiry:eq(0)').addClass('hide')
									loadDemandValues(result);
								}
								$('[data-id=inquiry]').trigger('click');
							});
							$('.nav').removeClass('inquiryPrice-y')
						}else if($('.nav').hasClass('hasYudDing')){
							$('.pop-close').trigger('click');
							isLogin=true;
							isCalendarLogin=true;
							$('[data-id='+$('.nav').data('id')+']').trigger('click');
						}else if($('.nav').hasClass('hasComment')){
							$('.pop-close').trigger('click');
							isLogin=true;
							$('#bottomComent').trigger('click');
						}else if($('.nav').hasClass('hasCollection')){
							$('.pop-close').trigger('click');
							isLogin=true;
							$('.btn-collect').trigger('click');
						}else if($('.nav').hasClass('hasCombo')){
							location.href='/order-init/combo-'+$('.combo-head').data('id')+'?date='+$('.date').val()+'&number='+$('.peo').val();
						}else if($('.top-bar').hasClass('freeDemand')){
							$('.pop-close').trigger('click');
							$(".popBg,.freePlacePop").show();
						}else if($('.top-bar').hasClass('hasYudDing')){
							$('.closePop').trigger('click');
							isLogin=true;
							$('[data-id='+$('.nav').data('id')+']').trigger('click');
						}else{
							if($('.loginBtn').hasClass('goHome')){
								location.href='/';
							}else{
								$('.pop-close').trigger('click');
								location.reload();
							}
						}
						changeCode();
					}else if(result.code=='-2'){
						$('.codeTip').show().text(result.message);
						changeCode();
					}else{
						$('.stateWordTip').show().text(result.message);
						cwCount=cwCount+1;
						changeCodeState(cwCount);
					}
					$('.loginBtn').removeClass('onLogin');
				});
			}else{
				$.post('/thc/reservationRegister','mobile='+$('#username-pop').val()+"&d-code="+$('#stateWord').val()+"&isyd=5",function (result){
					if(result.code=='0'){
						if($('.nav').hasClass('hasOrder')){

							if($('.nav').hasClass('comboDetail')){
								var data='phoneMob='+$('#phone').val()
								+'&sourceId='+$('#dqgoodsid').val()
								+'&groups='+$('#dqgroups').val()
								+'&name='+$('#dqgoodsname').val()
								+'&source='+$('#dqsource').val();

								if($('#sourceStoreId').length>0){
									if($('#sourceStoreId').val()!=''){
										data+="&sourceStoreId="+$('#sourceStoreId').val();
									}
								}
								if($('#isyd').val()=='0'){
									if($('#d12').length>0){
										data+='&startDate='+$('#d12').val();
									}
								}
								$.post( '/demand/create', data , function( result ) {
									if(result.code=='0'){
										$('.new-pop-dialog').addClass('hide');
										$('.new-pop-dialog:eq(0)').removeClass('hide');
										$('.pop-step').addClass('hide');
										$('.pop-step:eq(3)').removeClass('hide');
										isReload=true;
									}else{
										$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
									}
								});
							}else{
								var data='phone='+$('#phone').val()
								+'&productId='+$('#sourceStoreId').val()
								+'&productType='+$('#productType').val()
								+'&source='+$('#source').val()
								+'&type='+$('#type').val()
								+'&iscontact=T';
								
								if($('#isyd').val()=='0'){
									if($('#d12').length>0){
										data+='&startDate='+$('#d12').val();
									}
								}
								$.post( '/createDemandAjax', data , function( result ) {
									if(result.code=='0'){
										$('.new-pop-dialog').addClass('hide');
										$('.new-pop-dialog:eq(0)').removeClass('hide');
										$('.pop-step').addClass('hide');
										$('.pop-step:eq(3)').removeClass('hide');
										isReload=true;
									}else{
										$this.parent().parent().find('.error-tips').removeClass('hide').text(result.message);
									}
								});
							}
						}else if($('.nav').hasClass('inquiryPrice-y')){
							$('.pop-close').trigger('click');
							$.post('/member/inquiryAjax', function(result) {
								if(null==result||result.length==0){
									$('#inquiry .dialog-addinquiry:eq(0)').removeClass('hide')
									$('#inquiry .dialog-addinquiry:eq(1)').addClass('hide')
								}else{
									$('#inquiry .dialog-addinquiry:eq(1)').removeClass('hide')
									$('#inquiry .dialog-addinquiry:eq(0)').addClass('hide')
									loadDemandValues(result);
								}
								$('[data-id=inquiry]').trigger('click');
							});
							$('.nav').removeClass('inquiryPrice-y')
						}else if($('.nav').hasClass('hasComment')){
							$('.pop-close').trigger('click');
							isLogin=true;
							$('#bottomComent').trigger('click');
						}else if($('.nav').hasClass('hasYudDing')){
							$('.pop-close').trigger('click');
							isLogin=true;
							isCalendarLogin=true;
							$('[data-id='+$('.nav').data('id')+']').trigger('click');
						}else if($('.nav').hasClass('hasCollection')){
							$('.pop-close').trigger('click');
							isLogin=true;
							$('.btn-collect').trigger('click');
						}else if($('.nav').hasClass('hasCombo')){
							location.href='/order-init/combo-'+$('.combo-head').data('id')+'?date='+$('.date').val()+'&number='+$('.peo').val();
						}else if($('.top-bar').hasClass('freeDemand')){
							$('.pop-close').trigger('click');
							$(".popBg,.freePlacePop").show();
						}else if($('.top-bar').hasClass('hasYudDing')){
							$('.closePop').trigger('click');
							isLogin=true;
							$('[data-id='+$('.nav').data('id')+']').trigger('click');
						}else{
							if($('.loginBtn').hasClass('goHome')){
								location.href='/';
							}else{
								$('.pop-close').trigger('click');
								location.reload();
							}
						}
						changeCode();
					}else if(result.code=='-2'){
						$('.codeTip').show().text(result.message);
						changeCode();
					}else{
						$('.stateWordTip').show().text(result.message);
						cwCount=cwCount+1;
						changeCodeState(cwCount);
					}
					$('.loginBtn').removeClass('onLogin');
				});
				
			}
		}
	});
});


function validate3(el) {
    if(el.val() == '') {
      showError3(el)
      isvalidate=false;
    } 
    else if(!new RegExp(el.attr('data-rule')).test(el.val())) {
      showError3(el, 'rule')
      isvalidate=false;
    }else {
      hideError3(el)
      isvalidate=true;
    }
  }
function showError3(el, cate, callback) {
	$('.tips-normal').addClass('hide');
    var split = el.attr('data-error').split('|')
    el.parent().find('.subTip').show().text(split[0])
    if(arguments[1] == 'rule') el.parent().find('.subTip').show().text(split[1])
    else if(arguments[1] == 'compare') el.parent().find('.subTip').show().text(split[2])
    else if(arguments[1] == 'ajax') {
      callback && callback(el)
    }
    el.focus();
    el.parent().css("border-color","red")
    //el.addClass('error-bor error-fade')
  }

function hideError3(el) {
  //el.removeClass('error-bor error-fade')
  el.parent().parent().find('.subTip').hide().text('')
}
