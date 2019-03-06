
///////////////
;
(function() {
  var pop = $('.select-pop-menu')
  var input = $('[data-js=select]')
  var type = ''

  function hide(el) {
    el.addClass('hide')
    return el
  }

  function show(el, showCallback) {
    // alert(1);
    if (el.hasClass('hide')) {
      hide(pop)
      el.removeClass('hide').scrollTop(0)
    }
    else el.addClass('hide')
    showCallback && showCallback(el)
    return el
  }

  function resize(el) {
    if (!type) return
      //console.log(type)
    $('[data-id=' + type + ']').css({
      top: ($('[data-type=' + type + ']').offset().top + $('[data-type=' + type + ']').height() + 1) + 'px',
      left: $('[data-type=' + type + ']').offset().left + 'px'
    })
  }

  function setScroll(el, height) {
    height = height || 190
    if (el.height() > height) {
      el.css({
        overflow: 'hidden',
        'overflow-y': 'auto',
        height: height + 'px'
      })
    }
  }

  function findClosest(selector, self, e) {
    var target = e.target
    if ($(target).closest('.arrow').length) {
      $(target).siblings(selector).eq(0).trigger('click')
    }
    else {
      if ($(target).closest(pop).length && !$(target).closest('[data-js=close]').length) {
        return
      }
      if ($(target).closest('#keyword').length) {
        if ($('#test-result').hasClass('hide') && $('#test-result').html()) {
          $('#test-result').removeClass('hide')
        }
      }
      else {
        $('#test-result').addClass('hide')
      }
      /*if ($(target).closest('#mainName').length) {
        if(!$.trim($(target).val()).length) {
          $('#focus-result').removeClass('hide')
        }
        else {
          if ($('#search-result').html()) {
            $('#search-result').removeClass('hide')
            $('#focus-result').addClass('hide')
          }
        }
      }
      else {
        $('#focus-result').addClass('hide')
        $('#search-result').addClass('hide')
      }*/
      $this = $(target)
      type = $this.data('type')
        //alert($this.data('type'))
      hide(pop.not('[data-id=' + type + ']'))
      show($('[data-id=' + type + ']'), function(el) {
        setScroll($('[data-id=' + type + ']'))
      }).css({
        top: ($this.offset().top + $this.height() + 1) + 'px',
        left: $this.offset().left + 'px'
      }).find('[data-role=value]').each(function(i) {
        // $(this).removeClass('highlight')
        $(this).on('mouseover', function() {
          $('[data-role=value]').removeClass('highlight')
          $(this).addClass('highlight')
        }).off('click').on('click', function(e) {
          if ($(document.body).hasClass('channel-page')) {
            e.preventDefault()
          }
          //console.log($this)
          $this.val($(this).text())
          $this.data('value', $(this).attr('data'))
          $this.next().val($(this).attr("data"));
          $this.trigger('change')
          $('[data-type=' + type + ']').addClass('active')
          var next = $('[data-type=' + type + ']').parents('.f-row').next()
          if (!$.trim(next.find('[data-type]').val()) && $('.nav-side').is(':visible') && $('body').hasClass('channel-page')) {
            next.find('[data-type]').trigger('click')
          }
          //$('[data-type='+type+']').removeClass('active')
          hide($(this).parents('[data-id=' + type + ']'))
        })
      })
    }
  }

  function validateForm(el, context, callback) {
    var valid = true
    $.each($(el, context), function(i, el) {
      validateField($(el))
    })
    if ($('.error', context).length) {
      $('.error', context).eq(0).focus()
      valid = false
    }
    else callback && callback(el)
  }

  function validateField(el) {
    if (el.val() == '') {
      el.addClass('error')
    }
    else {
      el.removeClass('error')
    }
  }
  $(function() {
    var mapDiv = $('[data-id=map]')
    var ftBar = $('.thc-footer')
    if (mapDiv.length) {
      var startPos = mapDiv.offset().top
    }
     function fixed1() {
      var  visibleWidth=$(document.body).outerWidth(true);
      var de = document.documentElement;
      var scrollY = de && de.scrollTop || document.body.scrollTop;
      if(ftBar.length){
    	  var ftTop = ftBar.offset().top;
      }
      
      if (startPos - scrollY <= 0) {
        mapDiv.addClass('map-fixed');
        if (ftTop - scrollY < mapDiv.outerHeight()) {
         // mapDiv.removeClass('map-fixed');
        }
      }
      else {
       mapDiv.removeClass('map-fixed');
        if(visibleWidth<1170)
        {
           mapDiv.css('right', '0');
        }else{
          mapDiv.css('right', 'auto');
        }
      }
    }
    $(window).on('scroll', function() {
      fixed1();
    });
        $(window).on('resize', function() {
          var  visibleWidth=$(document.body).outerWidth(true);
    if(visibleWidth<1170)
            {
               mapDiv.css('right', '0');
            }else{
              mapDiv.css('right', 'auto');
            }
    })
  })
  $(document.body).on('submit', '[data-js=valid]', function() {
    var o = $(this)
    if(o.attr('id')!='createDemand'){
        validateForm('[data-js=select]', o, function() {
            o.get(0).submit()
            return true
          })
    }
  })
  $(document.body).on('change', '[data-js=select]', function() {
    validateField($(this))
  })
  $(document.body).off('click').on('click.delegate', function(e) {
    findClosest('[data-js=select]', this, e)
  })
  $(document.body).on('keypress keyup keydown paste', '[data-js=select]', function(e) {
    if ($.trim($(this).val())) {
      hide(pop)
    }
  })
  $(window).on('resize', resize)
  window.setScroll = setScroll
})();
(function() {
//  $('.menus').find('li').each(function() {
//    $(this).mouseover(function(e) {
//      $('.menus').find('li').removeClass('current')
//      $(this).addClass('current')
//      if ($(this).find('.nav-sub').length) {
//        $('.nav-mask').removeClass('hide')
//      }
//    }).mouseout(function() {
//      $('.nav-mask').addClass('hide')
//      $(this).removeClass('current')
//    })
//  })
})()
var AutoCompleteLayer = function(config) {
  function temp(tmpl, data) {
    return tmpl.replace((RegExp('%\\s*([a-z0-9_][.a-z0-9_]*)\\s*%', 'gi')), function(tag, k) {
      var p = k.split('.'),
        len = p.length,
        temp = data,
        i = 0;
      for (; i < len; i++) {
        temp = temp[p[i]];
      }
      return temp;
    });
  }

  function debounce(fn, delay) {
    var timer = null;
    return function() {
      var context = this,
        args = arguments;
      clearTimeout(timer);
      timer = setTimeout(function() {
        fn.apply(context, args);
      }, delay);
    };
  }
  var tpl = {
    region: '<li data-key="%name%"><a href="/home/serach?keyword=%name%">地点在%name%附近的场地</a></li>',
    //pois: '<li>%name%<span>%address%</span></li>',
    store: !config.filters ? '<li data-key="%name%"><div style="float:right;width:55%;text-align:right;color:#999"><span>%city%</span><span style="margin-right:10px">%district%</span><span>共%venueNum%块场地</span></div><a href="/supplier-%id%.html" target="_blank">%name%</a></li>' :
      '<li data-key="%name%"><div style="float:right;text-align:right;color:#999"><span>%district%</span></div><a href="/supplier-%id%.html">%name%</a></li>'
  };
  var idx = -1

  function render(options, value) {
    var regionHTML = ''
    var storeHTML = ''
    value = $.trim(value)
    if (options.region != null) {
      $.each(options.region, function(i, el) {
        regionHTML += temp(tpl.region, el)
      })
      regionHTML = regionHTML ? '<ul class="region-list" style="border-bottom:1px dashed #ccc">' + regionHTML + '</ul>' : ''
    }
    if (options.store != null) {
      $.each(options.store, function(i, el) {
        storeHTML += temp(tpl.store, el)
      })
      storeHTML = storeHTML ? '<ul class="store-list" style="border:0">' + storeHTML + '</ul>' : ''
    }
    $(config.result).html(regionHTML + storeHTML)
  }

  function show(el) {
    el.removeClass('hide')
  }

  function hide(el) {
    el.addClass('hide')
  }

  function mouseOver(el) {
    var li = $(config.result).find('li')
    $.each(li, function(i, el) {
      $(el).on('mouseover', function(e) {
        li.removeClass('selected')
        $(el).addClass('selected')
        idx = i
      }).on('mouseout', function(){
    	  $(el).removeClass('selected')
      })
    })
  }

  function selectUp(el, e) {
    var li = $(config.result).find('li')
    if (idx > 0) {
      idx -= 1
    }
    else {
      return
    }
    li.removeClass('selected')
    li.eq(idx).addClass('selected')
    el.val(li.eq(idx).data('key'))
    el.data('url', li.eq(idx).find('a').attr('href'))
    if (el.val() == '' || li.eq(idx).find('a').attr('href') === undefined) {
      el.data('url', '')
    }
  }

  function selectDown(el, e) {
    var li = $(config.result).find('li')
    idx = idx < li.length - 1 ? idx + 1 : 0
    li.removeClass('selected')
    li.eq(idx).addClass('selected')
    el.val(li.eq(idx).data('key'))
    el.data('url', li.eq(idx).find('a').attr('href'))
    //console && console.log(li.eq(idx).find('a').attr('href'))
    if (el.val() == '' || li.eq(idx).find('a').attr('href') === undefined) {
      el.data('url', '')
    }
  }
  /* */

  
  function jumpurl(el, result, e){
	
	  function skipUrl(url){
      window.open(url, '_blank')
		  //location.href = url
	  }
    $.each(el, function(i, el){
    	var url = '/home/serach';
		  url += '?keyword=' + $(el).val();
		  var dataUrl = $(el).data('url')
      if($(el).val() == ''){
    	  return false
      }
     
	/*  if($(result).html()){
		  if(dataUrl) {
	    	  
	    	  skipUrl(dataUrl)
	      }
		  else {
			  skipUrl($(result).find('li').eq(0).find('a').attr('href'))
			 
		  }
	  }
		
      else {*/
    	  skipUrl(url)
      /*}*/
    	 // alert(url);
      hide($(config.result))
  	
    })
  }

  function search(e, options) {
    var $this = $(this)

    if (e.keyCode == 13) {
    	jumpurl($this, config.result, e)
    	
    }
    if (e.keyCode == 40) {
      selectDown($this, e)
    }
    else if (e.keyCode == 38) {
      selectUp($this, e)
    }
    else if ($.trim($this.val()).length && !/(38|40|13)/.test(e.keyCode)) {
      hide($(config.focusResult))
      requestXHR({
        url: options.url + encodeURIComponent($this.val())
      }, function(ajax) {
        ajax.done(function(data) {
          //console && console.log(data)
          if (data != null) {
            idx = -1
            $this.data('url', '')
            hide($(config.focusResult))
            if (!config.filters) {
              render({
                region: data.regions,
                store: data.stores
              }, $this.val())
            }
            else {
              render({
                store: data.stores
              }, $this.val())
            }
            if ($(config.result).html()) {
              show($(config.result))
              mouseOver($this)
              stringSub()
             highlight($this.val())
            }
            else {
              hide($(config.result))
            }
          }
        }).fail(function(xhr, status, capture) {
          //todo
        })
      })
    }
    else {
      if(!$this.val()){
    	  show($(config.focusResult))
    	  hide($(config.result))
    	  $(config.result).empty()
      }
      
      
    }
  }

  function stringSub(){
    var lnk = $(config.result).find('.store-list a')
    $.each(lnk, function(i,el){
     var txt = $(el).text()
     txt = txt.length > 12 ? txt.substring(0,12)+'...' : txt
     $(el).text(txt)
    })
  }

  function highlight(value) {
    var ulA = $(config.result).find('li a')
 
    highlightText(ulA, value)

  }

  function highlightText(el, value) {
    $.each(el, function(i, el) {

      if (~$(el).text().indexOf(value)) {
        var rep = $(el).html().replace(new RegExp(value, 'g'), '<span style="color:#1DA27F">' + value + '</span>')
        $(el).html(rep)

      }
    })
  }

  function eventHandle(el, options) {

   /* $(el).off().on('keyup keydown keypress', debounce(function(e) {
      search.call(this, e, options)
    }, 100))

    $('#search-btn').on('click', function(e) {
      e.preventDefault()
      jumpurl($(el), config.result, e)
    })*/
  }

  function requestXHR(options, callback) {
    var ajax = $.ajax({
      method: options.data ? 'POST' : 'GET',
      url: options.url,
      dataType: options.dataType || 'json'
    })
    callback && callback(ajax)
  }
  return {
    eventHandle: eventHandle
  }
}


AutoCompleteLayer({
  filters: true,
  result: '#test-result'
}).eventHandle('.ipt-keyword', {
  url: '/venue/storeSuggest?keyword='
})
$(function(){
	if(!$(".part-ct").find('.tit').eq(0).length) return
var wTit01=$(".part-ct").find('.tit').eq(0).offset().top;
var wTit02=$(".part-ct").find('.tit').eq(1).offset().top;
var wTit03=$(".part-ct").find('.tit').eq(2).offset().top;
var wTit04=$(".part-ct").find('.tit').eq(3).offset().top;
var wTit05=$(".part-ct").find('.tit').eq(4).offset().top;
var wTit06=$(".part-ct").find('.tit').eq(5).offset().top;

$(window).scroll(function(e){
  var targetTop= $(this).scrollTop();
  var titShow=function(index){
      $(".part-ct").find('.tit').eq(index).addClass('tit-current').parents('.part-ct').siblings().find('.tit').removeClass('tit-current');
  }
  if(targetTop>parseInt(wTit02-120)&& targetTop<parseInt(wTit03-120)){
titShow(1);
    }else if (targetTop>parseInt(wTit03-120)&& targetTop<parseInt(wTit04-120)) {
titShow(2);
    }else if (targetTop>parseInt(wTit04-120)&& targetTop<parseInt(wTit05-120)) {
titShow(3);
    }else if (targetTop>parseInt(wTit05-120)&& targetTop<parseInt(wTit06-120)) {
titShow(4);
    }else if (targetTop>parseInt(wTit06-120)) {
titShow(5);
    }else{
     titShow(0);
    }
})
})