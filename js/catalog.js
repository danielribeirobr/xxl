$(function(){
	
	$('div.details-1 ul.images a').click(function(e){
		e.preventDefault();
		$('div.img-big img').attr('src', $(this).attr('href'));
	});
	
	$('form[name=checkout]').validate({
		rules: {
			email2: {
				equalTo: '#f_email'
    		}
		},
		submitHandler: function(form){
	    	$.post(
        		$(form).attr('action'),
        		$(form).serialize(),
        		function(data) {
        			if(data == "1")
        				$('#msg-success').modal({
        					onClose: function() {
        						document.location = '?module=catalog';
        					}
        				});
        			else
        				$('#msg-fail').modal();    			
        		}
	        );
		}
	});
	
	$('.jqzoom').jqzoom({
		zoomWidth: 470,
		zoomHeight: 370,
		zoomType: 'reverse',
		lens:true,
		preloadImages: false,
		alwaysOn:false,
		xOffset: 40
    });	
	
});