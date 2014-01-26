$(document).ready(function() {
	if (($("h1.subheader")[0].textContent==="New Post") && ($("#post_address")[0].nodeName==="INPUT") && ($("#post_address")[0].value==="")) {
  	$("#post_address").val(geoip_city()+", "+geoip_region());
  }
});
