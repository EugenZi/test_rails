kendo.culture("ru-RU");
$(function(){
	$('.editor').kendoEditor({
     encoded: false
 	});
 	$('.show_comment_form').live('click',function(){
 		var elem = $(this).closest('.comment_block.span12').find('.add_comment');
 		if(elem.height() == 0)
 			elem.animate({height: '0px'},500);
 		else
 			elem.animate({height: '400px'}, 500);
 	});
});
