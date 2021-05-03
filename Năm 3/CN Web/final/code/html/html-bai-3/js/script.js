function initLoaded(){
	initScroll();
}
$(document).ready(function() {
	initLoaded();
});
function changePosition(){
	//$('#log').append('changePosition->currTop[' + currTop + ']<br/>');
	currTop += step;
	if (currTop > topMax) {
		if (timer) {
			window.clearInterval(timer);
			timer = 0;
		}
		return 0;
	}
	$('#support-button').css({top:currTop});
}
var topMax = 200;
var step = 1;
var num = 20;
var currTop = 0;
var sleepTime = 40;
var timer = 0;
function initScroll(){
	$(window).scroll(function() {
		currTop = topMax - num * step;
		//if (!timer)
			timer = setInterval(changePosition,sleepTime);
		//}
		
	});
}
