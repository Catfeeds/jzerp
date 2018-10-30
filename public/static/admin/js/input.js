$(".status").click(function(){
	console.log(1)
	var o = $(this);
	var d = o.children('div');
	var inp = o.children('input');
	if(d.hasClass('actives')){
		d.removeClass('actives active_t').addClass('cancelActive');
		inp.val(0)
	} else {
		d.removeClass('cancelActive cancal_t').addClass('actives');
		inp.val(1)
		
	}
})