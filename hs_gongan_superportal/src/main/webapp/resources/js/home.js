$(function(){
	$(document).on('click', '.topdock li', function(){
		var index = $(this).index() + 1;
		
		$('#desk_' + index).click();
	});
});
