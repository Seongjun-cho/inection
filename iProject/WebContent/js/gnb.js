$(document).ready(function(){	
	$("#topnavi>li>div").hide();
	$("#topnavi>li>div>img").hide();
	$("#topnavi>li").bind("mouseover", function(){
		if($(this).find("div").is(":hidden")){
			$("#topnavi>li>div:visible").slideUp();
			$(this).find("div").slideDown();
		};
		$("#topnavi>li").find('>a').each(function(){
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_on.', '_off.'));
		});
		$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_off.', '_on.'));
	}).bind("mouseleave", function(){
		$("#topnavi>li>div:visible").slideUp();
		$("#topnavi>li").find('>a').each(function(){
			$(this).find('img').attr('src', $(this).find('img').attr('src').replace('_on.', '_off.'));
		});
	});

	$("#topnavi>li>a").bind("focusin", function(){
		//$("#topnavi>li>div:visible").slideUp();
		$("#topnavi>li>div").slideUp();
		$(this).next("div").slideDown();
	});
});