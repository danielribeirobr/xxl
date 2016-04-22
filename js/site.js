$(function(){

	// Stylebook carousel
    $("#carrousel").jcarousel({
        scroll: 5,
        wrap: 'circular',        
        initCallback: function(c){
			$('#carrousel div.arrow.left').click(function(){
		        c.prev();
		        return false;
			});
			
    		$('#carrousel div.arrow.right').click(function(){
    	        c.next();
    	        return false;
    		});
    	},
        buttonNextHTML: null,
        buttonPrevHTML: null
    });
    
    // Stylebook thumbs click event
    $('#carrousel ul.st-items li a').click(function(event){
    	event.preventDefault();
    	$('div.stylebook-full-image img').attr('src', $(this).attr('href'));
    });
    
	// Home carousel
    $("#home-images").jcarousel({
        auto: 5,
        scroll: 1,        
        wrap: 'last', // or circular
        initCallback: function(c){
    		c.startAuto();
    	},
    	itemVisibleInCallback: {
    		onAfterAnimation: null
    	},
        buttonNextHTML: null,
        buttonPrevHTML: null
    });
    
    // All actions forms
    $('form.ajax-post').submit(function(){
    	if($('form.ajax-post').hasClass('validate') && !$(this).valid())
    		return false;
    	ajaxSubmitForm(this);
    	return false;
    });
        
    $('form.validate').validate({
		rules: {
			email2: {
				equalTo: '#f_email'
			}
		},
		submitHandler: function(form){
			ajaxSubmitForm(form);
		}		
    });
    
});

function ajaxSubmitForm(form) {
	$.post(
		$(form).attr('action'),
		$(form).serialize(),
		function(data) {
			if(data == "1")
				$('#msg-success').modal();
			else
				$('#msg-fail').modal();    			
		}
	);
}

$(window).load(function () {
    if($('fieldset.expand-fields').length > 0) { 
    	var fieldset_width = 0;
    	$('fieldset.expand-fields').find('input[type=text], textarea, select').each(function(){
    		if(fieldset_width == 0)
    			fieldset_width = $(this).parents('div.fields').width();
    		var tolerance = this.tagName == 'SELECT' ? 10 : 15;
    		$(this).width(fieldset_width - $(this).prev('label').width() - tolerance);
    	});
    }	
});