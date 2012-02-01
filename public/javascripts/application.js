// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
    $('a[rel=image]').lightBox();

	$("#search_brand_id_eq").change(function() {
	  // make a POST call and replace the content
	  var brand = $('select#search_brand_id_eq :selected').val();
	  if(brand == "") brand = "0";
	  jQuery.get('/cars/update_carmodels_select/' + brand, function(data){
	    $("#search_carmodel_id_eq").html(data);
	  })
	  return false;
	});
	
	$(".vitrine").jCarouselLite({
		visible: 1,
		start: 0,
		auto: 4000,
		speed: 1000,
	    btnGo:
		    [".nav .1", ".nav .2",
		    ".nav .3", ".nav .4"]
    });
});