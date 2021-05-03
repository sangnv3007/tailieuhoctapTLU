// JavaScript Document
$(document).ready(function()
{
	//slides the element with class "menu-body" when paragraph with class "menu-head" is clicked 
	$("#firstpane p.menu-head").click(function()
    {
		$('#firstpane p.menu-head').css({background:"url(images/icon-03.gif) no-repeat center left"});
		$(this).css({background:"url(images/icon-03-click.gif) no-repeat center left"}).next("div.menu-body").slideToggle(300).siblings("div.menu-body").slideUp("slow");		
	});
	//slides the element with class "menu-body" when mouse is over the paragraph
	$("#secondpane p.menu-head").mouseover(function()
    {
	     $(this).css({background:"url(/images/icon-03-click.gif) no-repeat center left"}).next("div.menu-body").slideDown(500).siblings("div.menu-body").slideUp("slow");
         $(this).siblings().css({background:"/url(images/icon-03.gif) no-repeat center left"});
	});
});
