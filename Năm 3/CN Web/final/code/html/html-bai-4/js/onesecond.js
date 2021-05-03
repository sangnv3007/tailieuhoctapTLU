var borderPercent = 0;
$(document).ready(function() {
	//alert('ok');
	setInterval(changeBorder,100);
	//alert('end');
});
function changeBorder(){
	borderPercent = (borderPercent + 1) % 101;
	$('#num-border').html(borderPercent + '%');
	$(".small-border").css({'width':borderPercent + '%'});
}

