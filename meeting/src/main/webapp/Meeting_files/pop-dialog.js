;(function($, window, undefined) {
  function popDialog(el, options) {
    if(!(this instanceof popDialog)) {
      return new popDialog(el, options)
    }
    this.el = el
    this.parent = $(document.body)
    this.options = $.extend({}, this.options)
    $.extend(!0, this.options, options)
    this.init()
  }
  popDialog.prototype = {
    constructor: popDialog,
    options: {
      overlay: '#overlay-layer',
      showCallback: function() {},
      hideCallback: function() {}
    },
    init: function() {
      var $this = this.el
      this.parent.on('click', $.proxy(function(e) {
        this.clickHandler($this, e)
      }, this))
    },
    clickHandler: function(el, e) {
      var target = e.target
      if(target == el[0]) {
        e.preventDefault()
        $.each(el, $.proxy(function(i, el) {
          this.show()
        }, this))
      }
      if($(target).closest(this.options.overlay).length || $(target).data('close') != undefined) {
        e.preventDefault()
        this.hide()
      }
    },
    setOverlay: function(uid) {
    	//大小礼包判断是否选中
        if($('.content-info-details li a').length>0){
        	if($('.hideType').val()==0){
            	if($('.content-info-details li .current').length==0){
                	  return false;
            	}
        	}
        }

      $(this.options.overlay).css({
        height: this.parent.height()
      })[uid ? 'removeClass' : 'addClass']('hide')
    },
    adjustPosition: function() {

          var $this = this.el
	      var id = $this.data('id')
	      var idElement = $('#' + id)
	      var width = idElement.outerWidth()
	      var height = idElement.outerHeight()
	      idElement.css({
	        position: 'fixed',
	        top: '50%',
	        left: '50%',
	        marginLeft: '-' + width / 2 + 'px',
	        marginTop: '-' + height / 2 + 'px',
	        zIndex: '10000'
	      })
    },
    show: function() {
    	//大小礼包判断是否选中
    	
        if($('.content-info-details li a').length>0){
        	if($('.hideType').val()==0){
            	if($('.content-info-details li .current').length==0){
                	  return false;
            	}
        	}
        }
      var $this = this.el
      var id = $('#' + $this.data('id'))
      id.removeClass('hide')
      this.setOverlay(1)
      this.adjustPosition()
      this.options.showCallback(id, this)
    },
    hide: function() {
      var $this = this.el
      var id = $('#' + $this.data('id'))
      id.addClass('hide')
      this.setOverlay(0)
      this.options.hideCallback(id, this)
    }
  }
  $.fn.popDialog = function(options) {

    return this.each(function() {
      var $this = $(this)
      popDialog($this, options)
    })
  }
  window.popDialog = popDialog
})(window.jQuery, window)