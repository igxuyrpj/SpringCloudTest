// JavaScript Document
$(function () {
    $("#focus").sudyfocus({
                p:6, // 窗口号或频道号
                json: w55imgJsons, // 文章的json数据
                title: {
                    active: true, // 是否显示标题
                    isAutoWidth: true, // 标题背景自动宽度
                    href: false // 标题是否加文章链接
                },
                text: {
                    active: true, // 是否显示文章简介
                    isAutoHeight: true, // 简介背景自动高度
                    href: false // 简介是否加文章链接
                },
                href: true, // 图片是否加链接
                zWidth: 1600, // 窗口宽度
                zHeight: 422, // 窗口高度
                response: true, // 是否自适应缩放
                navigation: true, // 是否显示按钮，上一张、下一张
                isNavHover: true, // 导航按钮是否默认隐藏，鼠标经过时再显示
                pagination: true, // 是否显示按钮，1、2、3、4...
                effect: 'fade', // slide(滑动),fade(淡入),show(即显)
                speed: 400, // 切换速度
                crossfade: true, // 是否交叉淡入淡出
                start: 1, // 默认从第一个开始切换
                autoPlay:true, // 是否自动播放
                interval: 5000 // 自动播放时间间隔
    });
	$('.scroll').sudyScroll({
							width:330,		// 单元格宽度
							height:281,		// 单元格高度
							display: 1,		// 显示几个单元
							step:1,			// 每次交替增加几个单元，值不能大于display
							dir:"x",		// 交替方向，纵向为"y"，水平为"x"，默认为"y"纵向交替
							auto:true,		// 是否自动交替,默认为自动
							speed:500,		// 交替速度
							hoverPause:5000,		// 交替暂留时间
							navigation:true,		// 是否显示导航按钮
							//navTrigger:"click", 	// 导航按钮事件
							pagination:false,		// 是否显示索引按钮
							//pagTrigger:"mouseenter"  //索引按钮事件
  });
   $('.sudy-tab').sudyTab({
		  handle:".tab-menu li",		// 控制器元素，默认为.tab-menu li
		  content:".tab-list > li",	// 内容体，可以有多个并以英文逗号隔开，如.tab-list li,.tab-more li,默认值为".tab-list li,.tab-more li"
		  trigger:"mouseenter",		// 触发事件，默认为"mouseenter"鼠标经过,"click"鼠标点击
		  start:1,			// 开始项，默认为第一个
		  autoPlay:{
			 active:false,		// 是否激活自动切换
			 interval:5000,		// 自动切换时间间隔
			 pauseHover:true		// 是否鼠标放上面时停止自动
		}
	});
});
/*$(document).ready(function() {
	
   if($(document).width() >= 768){
    $(".window-5 .wp-menu").find('.menu-item').each(function(index,val){
		$(this).find("a").removeAttr("title");
		var html = $(this).find(".sub-menu").html();
		$(".navlist .wp-inner").append("<div class='navlist-li navlist-li-"+index+"'></div>");
		$(".navlist .wp-inner").find(".navlist-li").eq(index).html(html);
		$(".navlist .wp-inner").children(".navlist-li").find("ul").remove();
	});
	$(".navlist").append("<div class='clear'></div>");
	$(".wp-navi").click(function(){
	  $(".navlist").stop(true,true).slideToggle("slow");
      return false;  
    });
   }
	$(".window-5 .wp-menu").find('.menu-item').eq(0).click(function(){
      window.open('http://www.chu.edu.cn/',"_self")  
    });
	$(".window-5 .wp-menu").find('.menu-item').eq(7).click(function(){
      window.open('http://www.chu.edu.cn/gjy')  
    });
	$(".window-5 .wp-menu").find('.menu-item').eq(9).click(function(){
      window.open('http://www.chu.edu.cn/xxgk')  
    });
});*/