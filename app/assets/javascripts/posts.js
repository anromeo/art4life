$(document).ready(function() {
  # if($(window).width() < 516){
  #   $("#logo").width("90px");
  # }
  # $(window).resize(function(){
  #   if($(window).width() < 516){
  #     $("#logo").width("90px");
  #   }else{
  #     $("#logo").width("190px");
  #   }
  # });

	if (($("h1.subheader")[0].textContent==="New Post") && ($("#post_address")[0].nodeName==="INPUT") && ($("#post_address")[0].value==="")) {
  	$("#post_address").val(geoip_city()+", "+geoip_region());
  }
});
