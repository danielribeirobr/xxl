var flashvars = {
		contorno:		'0x000000',
		cor: 			'0xffffff',
		funcao_tipo:	'JS',
		funcao:			'loadState'
};
var params = {
		allowscriptaccess:	'always',		
		wmode:				'transparent'
};
var attributes = {
	id:		'julio_div',
	name:	'julio_div'
};
swfobject.embedSWF("swf/julio.swf", "julio_div", "494", "504", "8.0.0", false, flashvars, params, attributes);

function getJulio(nome) {
   if(!nome)
        nome = 'julio_div';
    var isIE = navigator.appName.indexOf("Microsoft") != -1;
    return (isIE) ? window[nome] : document[nome];
}

function loadState(uf) {
	var show = false;
	//getJulio().zoom(uf);
	$(dealersStates).each(function(){
		if(uf == this + '') {
			show = true;
		}
	});
	$('li.dealers').hide();	
	if(show) {
		$('.info-click').hide();
		$('li.state_' + uf).show();
	}
	else {
		$('.info-click').show();
	}
}

function inicializaJulio() {
	$(dealersStates).each(function(){
		getJulio().mudaCor('0xFF3333', this + '');
	});
}