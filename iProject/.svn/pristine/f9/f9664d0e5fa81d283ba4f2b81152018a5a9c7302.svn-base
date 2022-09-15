$(document).ready(function() {
	
	// Vertical Navigation
	var vNav = $('div.gnbNavi');
	var vNav_i = vNav.find('>ul>li');
	var vNav_ii = vNav.find('>ul>li>ul>li');

	vNav_i.find('>ul').hide();
	vNav.find('>ul>li>ul>li[class=active]').parents('li').attr('class','active');
	vNav.find('>ul>li[class=active]').find('>ul').show();
	function vNavToggle(event){
		var t = $(this);
		if (t.next('ul').is(':hidden')) {
			vNav_i.find('>ul').slideUp(100);
			t.next('ul').slideDown(100);
		} else if (t.next('ul').is(':visible')){
			t.next('ul').show();
		} else if (!t.next('ul').langth) {
			vNav_i.find('>ul').slideUp(100);
		}
		vNav_i.removeClass('active');
		t.parent('li').addClass('active');
		return false;
	}
	vNav_i.find('>a[href=#]').click(vNavToggle).focus(vNavToggle);
	function vNavActive(){
		vNav_ii.removeClass('active');
		$(this).parent(vNav_ii).addClass('active');
		return false;
	}; 
	//vNav_ii.find('>a[href=#]').click(vNavActive).focus(vNavActive);
	//vNav.find('>ul>li>ul').prev('a').append('<span class="i"></span>');    

	//Tab type_1
	if ( $('.jq_tabmenu_ty1').length > 0 ) {
		$('.jq_tabmenu_ty1').each(function(index) {
			var $tabM_1 = $(this);
			var $tabC_1 = $('.tabmenu_co_ty1:eq('+index+')');
			$tabM_1.find('ul > li > a').each(function(index1) {
				var $tabL_1 = $(this);
				$tabL_1.click(function() {
					$tabM_1.find('ul > li > a > img').each(function() {
						$(this).attr('src',$(this).attr('src').replace('_on.png','_off.png'));
						$tabC_1.find('.tabmenu_co').hide();
					});
					$(this).find('img').attr('src',$(this).find('img').attr('src').replace('_off.png','_on.png'));
					$tabC_1.find('.tabmenu_co:eq('+index1+')').show();
					return false;
				});
			});
			$tabM_1.find('ul > li > a:eq(0)').click();
		});
	}


	//Tab type_2
	var tab_face = $('div.tab_ty_2.face');
	var tab_face_i = tab_face.find('>ul>li');
	var tab_face_ii = tab_face.find('>ul>li>ul>li');
	tab_face.removeClass('jx');
	tab_face_i.find('>ul').hide();
	tab_face_i.find('>ul>li[class=active]').parents('li').attr('class','active');
	tab_face.find('>ul>li[class=active]').find('>ul').show();
	function faceTabMenuToggle(event){
		var t = $(this);
		tab_face_i.find('>ul').hide();
		t.next('ul').show();
		tab_face_i.removeClass('active');
		t.parent('li').addClass('active');
		return false;
	}
	function faceTabSubMenuActive(){
		tab_face_ii.removeClass('active');
		$(this).parent(tab_face_ii).addClass('active');
		return false;
	}; 
	tab_face_i.find('>a[href=#]').click(faceTabMenuToggle).focus(faceTabMenuToggle);
	tab_face_ii.find('>a[href=#]').click(faceTabSubMenuActive).focus(faceTabSubMenuActive);


	//Tab type_3
	if ( $('.jq_tabmenu_ty3').length > 0 ) {
		$('.jq_tabmenu_ty3').each(function(index) {
			var $tabM_1 = $(this);
			var $tabC_1 = $('.tabmenu_co_ty3:eq('+index+')');
			$tabM_1.find('ul > li > a').each(function(index1) {
				var $tabL_1 = $(this);
				$tabL_1.click(function() {
					$tabM_1.find('ul > li > a > img').each(function() {
						$(this).attr('src',$(this).attr('src').replace('_on.png','_off.png'));
						$tabC_1.find('.tabmenu_list').hide();
					});
					$(this).find('img').attr('src',$(this).find('img').attr('src').replace('_off.png','_on.png'));
					$tabC_1.find('.tabmenu_list:eq('+index1+')').show();
					return false;
				});
			});
			$tabM_1.find('ul > li > a:eq(0)').click();
		});
	}



	$('.question img').click(function(){ //이벤트 슬라이드 이미지
		var Number = $('.question img').index(this);
		var cnt = $('.eventList').index(this);
  
		$('.question img').each(function(i , e){
			if( Number == i ){
				$('.q').eq(i).slideUp();	
				$('.ans').eq(i).slideDown(800);
			}else{
				$('.q').eq(i).slideDown();	
				$('.ans').eq(i).slideUp(800);
			}		
		});			
	});
	

	$('.status').css('cursor','pointer').click(function(){  //이벤트 슬라이드 텍스트
		var number = $('.status').index(this);
		$(".status").each(function (i , e){
			if( number == i){
				$('.q').eq(i).slideUp();
				$('.ans').eq(i).slideDown();
			}else{
				$('.q').eq(i).slideDown();	
				$('.ans').eq(i).slideUp();
			}
		});
	});

	$('.event_close').css('cursor','pointer').click(function(){
		var number = $('.event_close').index(this);
		$('.q').eq(number).slideDown();
		$('.ans').slideUp();
	});


	// Frequently Asked Question
	var article = $('.faq>.faqBody>.article');
	article.addClass('hide');
	article.find('.a').hide();

	$('.faq>.faqBody>.article>.q>a').click(function(){
		var myArticle = $(this).parents('.article:first');
		if(myArticle.hasClass('hide')){
			article.addClass('hide').removeClass('show');
			article.find('.a').slideUp(100);
			myArticle.removeClass('hide').addClass('show');
			myArticle.find('.a').slideDown(100);
		} else {
			myArticle.removeClass('show').addClass('hide');
			myArticle.find('.a').slideUp(100);
		}
		return false;
	});


}); //end



