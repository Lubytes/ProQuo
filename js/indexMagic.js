(function($, document, window, viewport){
  
  var selected = null;
  var selectedString = "";
  var openBoxNum = 0;

    var closeBox = function(){
      var box = $(".dataBox")
      box.text('');
      box.removeClass("dataBox");
      setTimeout(function(){
          box.removeClass("col-xs-12")
      }, 200);
    }

    var openBox = function(posId) {
      var c;
      
      if( viewport.is("sm") ) {
        c = ".det-sm-" + Math.floor(((posId-1) / 2) + 1);
      }
      else if( viewport.is("md") ) {
        c = ".det-md-" + Math.floor(((posId-1) / 3) + 1);
      }
      else if( viewport.is("lg") ) {
        c = ".det-lg-" + Math.floor(((posId-1) / 4) + 1);
      }
      else{
        c = ".det-xs-" + posId;
      }
      
      if(c != selectedString)
        closeBox();
      
      selectedString = c;
      
      $(c).addClass("col-xs-12 dataBox");
      $(c).text("Product details for item " + (posId));
      return 0;
    }  
    
    $(".card").on("click", function() {
      if(selected != null) {
          $(selected).removeClass("cardActive");
          
          if(selected == this)
          {
            selected = null;
            closeBox();
            return;
          }
      }
      openBoxNum = $(this).attr("data-posId");
      $(this).addClass("cardActive");
      openBox(parseInt(openBoxNum));
      selected = this;
    });
    
    $(window).resize(
            viewport.changed(function(){
              if(openBoxNum != 0)
                openBox(openBoxNum);
            })
        );
    
})(jQuery, document, window, ResponsiveBootstrapToolkit);