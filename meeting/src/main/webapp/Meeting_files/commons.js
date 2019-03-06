/**
 * 公共JS.
 */


$( function() {
	//	当前城市切换  修改开始 - 新增
	$(".change-city").hover(function(){
		$(this).closest(".change-city").find(".select-pop-city").stop(true,false).slideDown();
	},function(){
		$(this).closest(".change-city").find(".select-pop-city").stop().slideUp();
	})
	$('#peopleNum').parent().find('ul li a').on('click',function (){
		$('#peopleNum').val($(this).parent().attr('data'));
	});
	$( '#cityList .clearfix li span' ).on( 'click', function() {
		$( '#cityList .clearfix li' ).removeClass( 'current' );
		$( this ).parent().addClass( 'current' );
		$( "#cityList .cyList" ).addClass( 'hide' );
		$( '#cityList .' + $( this ).attr( 'data' ) ).removeClass( 'hide' );
	} );

	//导航栏找场地筛选条件JS交互（开始）
	$('.col .clearfix li a').bind('click',function (){
		loadUrl($(this).parent().parent().data('type'),$(this).parent().data('value'));
	});
	//导航栏找场地筛选条件JS交互（结束）

	//主搜索框（开始）
	$( '.mainSubmit' ).on( 'click', function() {
		/*var city = $( '#cityId' ).data( 'value' );
		if( city == '' ) {
			city = 'quanguo';
		}else{
			city = currentCitySp;
		}
		var url = '/'+city +'/search/venue';
		if( $( '#mainName' ).val() != '' ) {
			url += '_name=' + $( '#mainName' ).val();
		}
		location.href =url;*/
	} );
	//主搜索框（结束）

	//城市切换效果
	$('#re-cityList .clearfix li span').on('click',function (){
		$('#re-cityList .clearfix li').removeClass('current');
		$(this).parent().addClass('current');
		$("#re-cityList .cyList").addClass('hide');
		$('#re-cityList .'+$(this).attr('data')).removeClass('hide');
	});

	$('.mainSearch-1').on('click',function (){
		$('.advanced').trigger('click');
	});

	
	$('.blk').on('hover',function (){
		$('#re-cityList').removeClass('hide');
		$('#re-cityList-venues').removeClass('hide');
	});

});

function loadUrl1(url){
	location.href=url;
}

/**
 * 导航栏找场地筛选条件路径加载
 */
function loadUrl(type,values){
	var url='/'+currentCitySp+'/search/venue_'+type+'-'+values;
	location.href=url;
}

/**
 * 加收藏
 */

function addFavorite2() {
	 if (window.sidebar && window.sidebar.addPanel) {
         window.sidebar.addPanel(document.title,window.location.href,'');
     } else if(window.external && ('AddFavorite' in window.external)) {
         window.external.AddFavorite(location.href,document.title);
     } else if(window.opera && window.print) {
         this.title=document.title;
         return true;
     } else {
         alert('请使用' + (navigator.userAgent.toLowerCase().indexOf('mac') != - 1 ? 'command/cmd' : 'ctrl') + ' + d添加到收藏夹');
     }
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
var isValidate=false;
function validate(el) {
    if(el.val() == '') {
      showError(el)
      isValidate=false;
    }
    else if(!new RegExp(el.attr('data-rule')).test(el.val())) {
      showError(el, 'rule')
      isValidate=false;
    }else {
      hideError(el)
      isValidate=true;
    }
  }

function showError(el, cate, callback) {
    var split = el.attr('data-error').split('|')
    el.parent().find('.error-tips').removeClass('hide').text(split[0])
    if(arguments[1] == 'rule') el.parent().find('.error-tips').removeClass('hide').text(split[1])
    else if(arguments[1] == 'compare') el.parent().find('.error-tips').removeClass('hide').text(split[2])
    else if(arguments[1] == 'ajax') {
      callback && callback(el)
    }
    el.addClass('error-bor error-fade')
  }

function hideError(el) {
  el.removeClass('error-bor error-fade')
  el.parent().find('.error-tips').addClass('hide').text('')
}
var count=1;
$(".demand-submit").off().on('click',function (){
	if(isLogin){
	}else{
		$('[data-id=login-pop-dialog]').trigger('click');
		return false;
	}
	validate($('#linkman'));
	if(!isValidate){
		return false;
	}
	validate($('#phoneMob'));
	if(!isValidate){
		return false;
	}
	if(''!=$('#peopleNum').val()){
		var strs= new Array(); //定义一数组
		strs=$('#peopleNum').val().split(",");
		$('#peopleMinCount').val(strs[0]);
		$('#peopleMaxCount').val(strs[1]);
	}else{
		$('.section-number').addClass('error-bor error-fade')
		return false;
	}
	if(isValidate){
		$('#createDemand').submit();
	}else{
		return false;
	}
});


