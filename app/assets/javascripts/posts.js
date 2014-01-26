$(document).ready(function() {
  if($(window).width() < 516){
    $("#logo").width("90px");
  }
  $(window).resize(function(){
    if($(window).width() < 516){
      $("#logo").width("90px");
    }else{
      $("#logo").width("190px");
    }
  });
});