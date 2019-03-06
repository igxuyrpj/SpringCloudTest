var text,desc,url,pic;
$(function(){
	
	// 加载默认地图
	loadMap1();
	//loadCiyt4();
	$('.more-dd').on('hover',function (){
		$('.city-type .select-pop-menu').removeClass('hide');
	});
	//分享动态数据处理
	$('.bds_more').mouseover(function(){
		text = $(this).attr('bdtext');
		desc = $(this).attr('bddesc');
		url = $(this).attr('bdurl');
		pic = $(this).attr('bdpic');
	});

	$( '#cityList .clearfix li span' ).on( 'click', function() {
		$( '#cityList .clearfix li' ).removeClass( 'current' );
		$( this ).parent().addClass( 'current' );
		$( "#cityList .cyList" ).addClass( 'hide' );
		$( '#cityList .' + $( this ).attr( 'data' ) ).removeClass( 'hide' );
	} );
	//商铺链接
	$(".area-num-wrap,.img-url").click(function(){
		
		var url = $(this).attr('urldata');
		var temp = ""; 
		
		//场地类型
		venue_type = $(".venue-type").find('.curr').find('a').eq(0).attr('datae');
		if(venue_type != 'all' && typeof venue_type != 'undefined'){
			temp += '&venueType=' + venue_type;
		}
		
		//可容纳人数
		krnrs = $(".krnrs").find('.curr').attr('data');
		if(krnrs != 'all' && typeof krnrs != 'undefined'){
			
			var ids = krnrs.split(',');
			if(ids[0] != 'A'){
				temp += "&numberBegin=" + ids[0];
			}
			
			if(ids[1] != 'A'){
				temp += "&numberEnd=" + ids[1];
			}
		}
		
		//速报价、可预定、全景
		$(".search-bottom-btn").each(function(){
			if($(this).attr('checked') == 'checked'){
				var bottomDataType = $(this).attr('dataType');
				var bottomData = $(this).attr('data');
				
				if(bottomDataType == 'isReserve'){
					if(bottomData == 'T'){
						temp += "&isReserve=true";
					}else{
						temp += "&isReserve=false";
					}
					
				}
				
				if(bottomDataType == 'fullShot'){
					if(bottomData == 'T'){
						temp += "&isFullview=true";
					}else{
						temp += "&isFullview=false";
					}
					
				}
				
			}
			
		});
		
		if(temp != '' && typeof temp != 'undefined'){
			url += "?" + temp;
		}
		
		window.open(url); 
		
		
	});
	
	
	$( '#area-list' ).find('[data-addis]').hover(function(e) {
		e.stopPropagation();
		var mun = $( this ).attr( "data-mun" );
		var lgt = $( this ).attr( 'data-lgt' );// 经度
		var lat = $( this ).attr( 'data-lat' );// 纬度
		var addis = $( this ).attr( 'data-addis' );
		var imgmin = $( this ).find( '.item-left-wrap img' ).attr( 'data' );// 图片路径
		/*venueShowDefaultMap( mun, $( this ).attr( "data-addis" ), lgt, lat );
		$( ".bigbtn" ).attr("href","javascript:showBigMap('" + $( this ).attr( "data-title" ) + "','"
						+ $( this ).attr( "data-addis" ) + "','" + currentCityName + "','" + lgt + "','" + lat
						+ "','" + imgmin + "','" + phone + "');" );*/
		loadMap('map',lgt,lat);
	}, function(){

	});
	
	//清空所有条件
	$('#clear-all').click(function(){
		$('.filter-wrap').find('.curr').removeClass('curr');
		$('.filter-wrap').find('.all').addClass('curr');
		//组装url查询路径，提交查询
		createUrlAndSubmit();
	});
	
	//每个分类更多点击
	$('.more-btn').click(function(){
		if($(this).text()=='更多城市'){
			return false;
		}
		
		//如果是二级菜单的更多按钮
		if($(this).is('.second-more-btn')){
			if($(this).attr("data") == '0'){
				$(this).parent().parent().parent().find('.onCurrent').removeClass( "hide" );
				$(this).attr("data","1").find('span').eq(0).html('收起');
			}else{
				$(this).parent().parent().parent().find('.onCurrent').addClass("hide" );
				$(this).attr("data","0").find('span').eq(0).html('更多');
			}
			return false;
		}
		
		if($(this).attr("data") == '0'){
			$(this).parent().parent().next().removeClass( "hide" );
			$(this).attr("data","1").find('span').eq(0).html('收起');
		}else{
			$(this).parent().parent().next().addClass("hide" );
			$(this).attr("data","0").find('span').eq(0).html('更多');
		}

	})
	
	//更多选项：配套设施/风格特色/场地设施/适用活动
	$("#more-bottom-tab").click(function(){
		
		if($(this).attr("data") == '0'){
			$("#more-tab-div").removeClass( "hide" );
			$(this).attr("data","1");
			$('#more-bottom-span').text( '收起' );
		}else{
			$("#more-tab-div").addClass("hide" );
			$(this).attr("data","0");
			$('#more-bottom-span').text( '更多选项：人数/配套设施' );
		}
	});
	
	//搜索选项选中/取消
	$('.filter-btn').each(function(){
		$(this).on('click', function(e){
			
			/*e.stopPropagation();
			e.preventDefault()*/
			//选中或取消选中
			changeBtnState($(this),e);
			
			//组装url查询路径，提交查询
			createUrlAndSubmit($(this));
		})
	})
	
	//排序按钮
	$('.sort-btn').click(function(){
		changeSortBtnState($(this));
		//组装url查询路径，提交查询
		createUrlAndSubmit($(this));
	});
	
	//
	$('.venueType-btn').click(function(){
		if($(this).is('.curr') == true){
			//组装url查询路径，提交查询
			createUrlAndSubmit($(this));
		}else{
			// 去掉其他类别的选中效果
			$(this).parent().find('.venueType-btn.curr').each(function(){
				$( this ).removeClass( 'curr' );
			});
			$(this).addClass( 'curr' );
			//组装url查询路径，提交查询
			createUrlAndSubmit($(this));
		}
	});
	
	//速报价、可预定、全景--复选框  搜索按钮
	$(".search-bottom-btn,.serarch-btn").click(function(){
		//组装url查询路径，提交查询
		var text =$('#key-name').val();
		window.location.href="venue.php?query=1&q="+text+"&cid="+cid;
	});
	
	//自定义人数
	$('#people-btn').click(function(){
		var value;
		var show;
		
		var objBegin = $('#people-begin');
		var objEnd = $('#people-end');
		
		if(!validateinput(objBegin)){
			return false;
		}
		
		if(!validateinput(objEnd)){
			return false;
		}
		
		var begin = objBegin.val();
		var end = objEnd.val();
		
		if(begin == '' && end == ''){
			return false;
		}
		
		if(begin != '' && end == ''){
			value = begin + ',A';
			show = begin + '人以上'
		}
		
		if(begin == '' && end != ''){
			value='A,' + end;
			show = '小于'+ end + '人';
		}
		
		if(begin != '' && end != ''){
			value = begin + ',' + end;
			show = begin + '-' + end + '人';
		}
		$('.krnrs').find('.filter-btn').removeClass('curr');
		$('#people-value').attr('data',value).text( show ).removeClass('hide').addClass('curr');
		
		//组装url查询路径，提交查询
		createUrlAndSubmit($(this));
	});
	
	//自定义面积
	$('#area-btn').click(function(){
		var value;
		var show;
		
		
		var objBegin = $('#area-begin')
		var objEnd = $('#area-end')
		
		if(!validateinput(objBegin)){
			return false;
		}
		
		if(!validateinput(objEnd)){
			return false;
		}
		
		var begin = objBegin.val();
		var end = objEnd.val();
		if(begin == '' && end == ''){
			return false;
		}
		
		if(begin != '' && end == ''){
			value = begin + ',A';
			show = '>' + begin + '㎡'
		}
		
		if(begin == '' && end != ''){
			value='A,' + end;
			show = '<'+ end + '㎡';
		}
		
		if(begin != '' && end != ''){
			value = begin + ',' + end;
			show = begin + '-' + end + '㎡';
		}
		$('.kymj').find('.filter-btn').removeClass('curr');
		$('#area-value').attr('data',value).text( show ).removeClass('hide').addClass('curr');
		
		//组装url查询路径，提交查询
		createUrlAndSubmit($(this));
	});
	
	//点击 查看地图
	$('.map-link').click(function(){
		var divdata  = $( this ).parent().parent().parent();
		var title = $( divdata ).attr( "data-title" );
		var addr = $( divdata ).attr( "data-addis" );
		var lgt = $( divdata ).attr( 'data-lgt' );// 经度
		var lat = $( divdata ).attr( 'data-lat' );// 纬度
		var phone = $( divdata ).attr( 'data-phone' );
		var imgmin = $( divdata ).find( '.item-left-wrap img' ).attr( 'data' );// 图片路径
		showBigMap( title, addr,currentCityName ,lgt ,lat, imgmin, phone );
	});
	//点击更多城市里面的城市
	$('#re-cityList').on('click','.cyList li a',function (){
		var cityType=$(this).attr('data');
		var currentCityName=$(this).text();
		// 1. 城市
		if(cityType && cityType != ''){
			$('.city-type .filter-btn').removeClass('curr');
			var obj = $('.city-type:first .cityss').find('a[data="'+cityType+'"]');
			obj.addClass('curr');
			if(obj.length==0&&cityType!='quanguo'){
				$('.city-type .end-city').removeClass('hide');
				$('.city-type .end-city a').text(currentCityName).attr('data',cityType).addClass('curr');
			}
			createUrlAndSubmit($(this));
		}
	});
})

/**
 * 排序切换
 * @param obj
 */
function changeSortBtnState(obj){
	//如果已经选中
	if(obj.is('.curr')){
		var dataType = obj.attr( 'dataType' );
		if(dataType == "all"){
			return false;
		}else{
			var data = obj.attr('data');
			if(data == 'ASC'){
				obj.attr('data','DESC');
			}else{
				obj.attr('data','ASC');
			}
		}
	}else{
		//如果没有选中
		obj.parent().find(".curr").each(function(){
			$(this).removeClass('curr');
		});
		obj.addClass('curr');
	}
}

/**
 * 组装url查询路径
 */
function createUrlAndSubmit(obj){
	
	var url = getBaesUrl() + "/";

	//venue_type = $(".city-type").find('.curr').find('a').eq(0).attr('data');
	// 组装城市
	//var currentCitySp = $('#currentCitySp').val();
	var currentCitySp = $(".city-type").find('.curr').attr('data');
	//alert(currentCitySp);
	if( currentCitySp && typeof currentCitySp != 'undefined' ) {
		url += currentCitySp;
	} else {
		url += "zhongguo"
	}
	url += '/search/venue';
	
	if(obj == null){
		location.href = url;
		return false;
	}
	
	if(obj.is('.first-btn')){
		if(!obj.is('.first-all')){
			return false;
		}
		
	}
	
	if(obj.is('.second-btn') ){
		var dataId = obj.attr('data');
		if($('#'+dataId).length != 0){
			return false;
		}
		
	}

	
	var venue_type = "";
	var act_type = "";
	var wzjt = "";
	var krnrs = "";
	var kymj ='';
	var cdlx = '';
	var jdjb = '';
	var ptss = '';
	var fgts = '';
	var cdss = '';
	var name = '';
	
	
	//关键字搜索
	name = $('#key-name').val();
	if(name != '' && typeof name != 'undefined'){
		url += '_name-' + name;
	}
	
	
	//场地类型
	venue_type = $(".venue-type").find('.curr').find('a').eq(0).attr('data');
	if(venue_type != 'all' && typeof venue_type != 'undefined'){
		url += '_venueType-' + venue_type;
	}
	
	//适合的用途（活动类型）
	act_type = $(".act-type").find('.curr').attr('data');
	if(act_type != 'all' && typeof act_type != 'undefined'){
		url += '_actType-' + act_type;
	}
	
	//位置交通
	wzjt = $(".wzjt").find('.first-btn.curr').attr('data');
	second_wzjt = $("#" + wzjt).find('.second-btn.curr').attr('data');
	thrid_wzjt = $("#" + wzjt).find('.thrid-btn.curr').attr('data');
	
	if(wzjt == 'REGION' || wzjt == 'BUSINESS' || wzjt == 'COLLEGE' || wzjt == 'SCENIC' ){
		if(second_wzjt != 'all' && typeof second_wzjt != 'undefined'){
			url += '_'+ wzjt.toLowerCase()  +'-' + second_wzjt;
		}
	}
	
	if(wzjt == 'SUBWAY' || wzjt == 'TRAFFIC'){
		if(second_wzjt != 'all' && typeof second_wzjt != 'undefined'&& typeof thrid_wzjt!= 'undefined'){
			url += '_'+ wzjt.toLowerCase() +'-' + thrid_wzjt;
		}
	}
	
	//可容纳人数
	krnrs = $(".krnrs").find('.curr').attr('data');
	if(krnrs != 'all' && typeof krnrs != 'undefined'){
		url += '_people-' + krnrs;
	}
	
	
	//可用面积
	kymj = $(".kymj").find('.curr').attr('data');
	if(kymj != 'all' && typeof kymj != 'undefined'){
		url += '_area-' + kymj;
	}
	
	//场地类型（商铺类型）
	$('.cdlx').find('.curr').each(function(){
		cdlx += $(this).find('input').eq(0).attr( 'data' ) + ',';
	});
	if(cdlx != 'undefined,'){
		cdlx = cdlx.substring( 0, cdlx.length - 1 );
		url += '_storeType-' + cdlx;
	}
	
	
	
	//场地设施
	$('.cdss').find('.curr').each(function(){
		cdss += $(this).find('input').eq(0).attr( 'data' ) + ',';
	});
	if(cdss != 'undefined,'){
		cdss = cdss.substring( 0, cdss.length - 1 );
		url += '_facilitys-' + cdss;
	}
	
	//排序
	var sortType = $('.sort-btn.curr').attr('dataType');
	var sortValue = $('.sort-btn.curr').attr('data');
	if(sortType != 'all'){
		url += '_' + sortType + '-' + sortValue;
	}
	

	
	url += '_page-1';
	
	//location.href = url;
	

}

/**
 * 改变该分类其他条件的选中状态
 */
function changeBtnState(obj,e){
	var cate = obj.parents('.filter-item');
	
	//单选：活动类型、可容纳人数
	if(cate.attr('data') == "city-type" ||cate.attr('data') == "act-type" || cate.attr('data') == 'krnrs' || cate.attr('data') == 'kymj'){
		
		// 给当前类别添加选中效果
		if(obj.is('.curr') == true){
			obj.removeClass( 'curr' );
			cate.find('.all').addClass('curr');
		}else{
			// 去掉其他类别的选中效果
			cate.find('.filter-btn').each(function(){
				$( this ).removeClass( 'curr' );
			});
			obj.addClass( 'curr' );
		}
		
	}
	
	//多选：场地类型/酒店级别/配套设施/风格特色/场地设施
	
	if(cate.attr('data') == "cdlx" || cate.attr('data') == 'jdjb' || cate.attr('data') == 'ptss' || cate.attr('data') == 'fgts' || cate.attr('data') == 'cdss'){
		if(obj.is('.curr') == true){
			obj.removeClass( 'curr' );
			var on = cate.find('.filter-btn.curr');
			if(on.size() < 1){
				cate.find('.all').addClass('curr');
			}
		}else{
			if(!obj.is('.all')){
				cate.find('.all').removeClass('curr');
				obj.addClass( 'curr' );
			}else{
				cate.find('.filter-btn').each(function(){
					$( this ).removeClass( 'curr' );
				});
				obj.addClass( 'curr' );
			}
			
		}
		
	}
	
	//层级：位置交通
	if(cate.attr('data') == "wzjt"){
		//如果选择不限，则收起所有下级菜单，并清除所有下级菜单选中的选项
		if(obj.is('.main-all')){
			
			$( ".filter-detail-wrap").css( 'display', 'none' );
			cate.find('.curr').each(function(){
				$(this).removeClass('curr');
			});
			obj.addClass('curr');
			return false;
		}
		
		//如果是一级菜单
		if(obj.is('.main-btn')){
			
			if(obj.is('.curr')){
				obj.removeClass( 'curr' );
				//隐藏所有二级菜单
				$('.filter-detail').css( 'display', 'none' );
				//隐藏整个二级菜单画布
				$( ".filter-detail-wrap").css( 'display', 'none' );
				//隐藏当前二级菜单
				$( "#" + obj.attr( "data" ) ).css( 'display', 'none' );
				//清除所有下级菜单选中的选项
				cate.find('.curr').each(function(){
					$(this).removeClass('curr');
				});
				//选中不限按钮
				cate.find('.main-all').click();
				
			}else{
				//取消选中所有一级菜单
				cate.find('.main-btn').each(function(){
					$(this).removeClass( 'curr' );
				});
				
				//显示当前选中一级菜单
				obj.addClass( 'curr' );
				//取消选中不限按钮
				cate.find('.main-all').removeClass('curr');
				//显示二级菜单画布
				$( ".filter-detail-wrap").css( 'display', 'block' );
				//隐藏所有二级菜单
				$('.filter-detail').css( 'display', 'none' );
				// 查找对应的的二级菜单。没有就显示无数据的div
				if( $( ".filter-detail-wrap" ).find( "#" + obj.attr( "data" ) ).length == 0 ) {
					$( "#detail-other" ).css( 'display', 'block' );
				} else {
					$( "#" + obj.attr( "data" ) ).css( 'display', 'block' );
					$( "#" + obj.attr( "data" ) ).find('.second-all').addClass('curr');
				}
				
			}
		}
		
		//如果是二级菜单
		if(obj.is('.second-btn')){
			var temp = cate;
			cate = obj.parents('.filter-detail');
			var wzjtId = cate.attr('id');
			// 给当前类别添加选中效果
			if(obj.is('.curr') == true){
				obj.removeClass( 'curr' );
				cate.find('.second-all').addClass('curr');
				//隐藏三级菜单
				cate.find('.detail-more').addClass('hide');
				//取消三级菜单选中
				cate.find('.detail-more').find('.thrid-btn.curr').removeClass('curr');
			}else{
				// 去掉其他类别的选中效果
				cate.find('.second-btn').each(function(){
					$( this ).removeClass( 'curr' );
				});
				obj.addClass( 'curr' );
				
				//隐藏所有三级菜单,并删除标记css：onCurrent
				//onCurrent用于实现二级菜单的更多按钮的功能实现
				cate.find('.detail-more').addClass('hide').removeClass('onCurrent');
				
				// 查找对应的三级菜单显示，并添加标记css：current
				if( cate.find( "#" + obj.attr( "data" ) ).length > 0 ) {
					$( "#" + obj.attr( "data" ) ).removeClass('hide').addClass('onCurrent');
					//将二级菜单的‘更多’按钮改为‘收起’
					cate.find(".second-more-btn").attr("data","1").find('span').eq(0).html('收起');
				}else{
					//如果没有三级菜单
					temp.find('.filter-detail[id!="'+ wzjtId +'"] .curr').removeClass('curr');
				}
			}
		}
		
		//如果是三级菜单
		if(obj.is('.thrid-btn')){
			
			var temp = cate;
			
			cate = obj.parents('.detail-more');
			
			var wzjtId = obj.parents('.filter-detail').attr('id');
			// 给当前类别添加选中效果
			if(obj.is('.curr') == true){
				obj.removeClass( 'curr' );
				//cate.find('.all').addClass('curr');
			}else{
				// 去掉其他类别的选中效果
				cate.find('.thrid-btn').each(function(){
					$( this ).removeClass( 'curr' );
				});
				obj.addClass( 'curr' );
				
				temp.find('.filter-detail[id!="'+ wzjtId +'"] .curr').removeClass('curr');
				temp.find('.detail-more.hide').find('.curr').removeClass('curr');
			}
		}
		
		
	}
	
	
}





/**
 * 绑定条件是，展开更多选项
 * @param temp temp为更多按钮的super级按钮
 */
function openMore(temp){
	temp.find('.more-btn').parent().parent().next().removeClass( "hide" );
	temp.find('.more-btn').attr("data","1").find('span').eq(0).html('收起');
}

//获取根路径
function getBaesUrl() {
	// 获取当前网址，如： http://localhost:8083/chongqing/search/venue
	var curWwwPath = window.document.location.href;
	// 获取主机地址之后的目录，如： chongqing/search/venue
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf( pathName );
	// 获取主机地址，如： http://localhost:6110
	var localhostPaht = curWwwPath.substring( 0, pos );
	
	return localhostPaht;
}
// 验证数字
function validateinput( obj ) {
	var reg = new RegExp( "^[0-9]*$" );
	if( !reg.test( $( obj ).val() ) ) {
		$( obj ).css( 'border', '1px solid #fd8560' );
		return false;
	} else {
		$( obj ).css( 'border', '1px solid #cdcdcd' );
		return true;
	}
}

//加载有数据的城市
function loadCiyt4(){
	$.post( '/region/querCity',  function( result ) {//查询有数据
			//$.post( '/region/queryCoveringCities',  function( result ) {//查询有数据的城市
		if(result!==null){
			var A_E=[];
			var F_I=[];
			var J_M=[];
			var N_Q=[];
			var R_U=[];
			var V_Z=[];
			var cityHtml=[]
			for(var i=0;i<result.length;i++){
				var c=result[i];
				if(c.firstPinyin=='A'||c.firstPinyin=='B'||c.firstPinyin=='C'||c.firstPinyin=='D'||c.firstPinyin=='E'){
					A_E[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
				if(c.firstPinyin=='F'||c.firstPinyin=='G'||c.firstPinyin=='H'||c.firstPinyin=='I'){
					F_I[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
				if(c.firstPinyin=='J'||c.firstPinyin=='K'||c.firstPinyin=='L'||c.firstPinyin=='M'){
					J_M[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
				if(c.firstPinyin=='N'||c.firstPinyin=='O'||c.firstPinyin=='P'||c.firstPinyin=='Q'){
					N_Q[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
				if(c.firstPinyin=='R'||c.firstPinyin=='S'||c.firstPinyin=='T'||c.firstPinyin=='U'){
					R_U[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
				if(c.firstPinyin=='V'||c.firstPinyin=='W'||c.firstPinyin=='X'||c.firstPinyin=='Y'||c.firstPinyin=='Z'){
					V_Z[i]='<li data-role="value" data="'+c.shortPinyin+'"><a href="/'+c.shortPinyin+'" data="'+c.shortPinyin+'" data-role="'+c.id+'">'+c.name+'</a></li>';
				}
			}
			$('#re-cityList1').append('<ul class="hide cyList A_E" ></ul>'
									+'<ul class="hide cyList F_I"></ul>'
									+'<ul class="hide cyList J_M"></ul>'
									+'<ul class="hide cyList N_Q"></ul>'
									+'<ul class="hide cyList R_U"></ul>'
									+'<ul class="hide cyList V_Z"></ul>');
			$('#re-cityList1 .A_E').html(A_E.join(''));
			$('#re-cityList1 .F_I').html(F_I.join(''));
			$('#re-cityList1 .J_M').html(J_M.join(''));
			$('#re-cityList1 .N_Q').html(N_Q.join(''));
			$('#re-cityList1 .R_U').html(R_U.join(''));
			$('#re-cityList1 .V_Z').html(V_Z.join(''));
		}
	});
}
function loadMap1() {
	// 加载地图地标
	// var map = new BMap.Map("mapapi");

	var libo = $( '#area-list li:eq(0)' );
	var lgt = $( libo ).attr( 'data-lgt' );// 经度
	var lat = $( libo ).attr( 'data-lat' );// 纬度
	var mun = $( libo ).attr( 'data-mun' );// 纬度
	var phone = $( libo ).attr( 'data-phone' );
	var addis = $( this ).attr( 'data-addis' );
	var imgmin = $( libo ).find( '.item-left-wrap img' ).attr( 'data' );// 图片路径
	loadMap('map',lgt,lat);
}

function loadMap(id,jindu,weidu){
	var map = new BMap.Map(id);
	var point = new BMap.Point(jindu,weidu);
	map.centerAndZoom(point, 16);
	var marker = new BMap.Marker(point); 
	map.addOverlay(marker);
	map.enableScrollWheelZoom(true);
	marker.setAnimation(BMAP_ANIMATION_BOUNCE); 		
	
}

with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
