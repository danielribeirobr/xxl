$(function(){
	$('input[name=btn_add_image]').click(function(){
		var frm = $(this).parents('form');
		frm.find('input[name=action]').val('addImageColor');
		frm.submit();
	});	
});