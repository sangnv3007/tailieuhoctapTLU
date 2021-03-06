<?
include("lib_db.php");
function get_top_news(){
	$sql = "select * from news where (catid in(7,9)) order by created desc limit 1";
	return select_one($sql);
}
function get_top_of_category($id){
	$sql = "select * from news where (catid=$id) order by created desc limit 10";
	return exec_select($sql);
}
$top = get_top_news();
$list = get_top_of_category(7);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Travel News</title>
	<meta http-equiv="Content-Type" content="text/shtml; charset=utf-8" />
	<link rel="icon" href="images/favicon.png" type="image/png" />
	<link type="text/css" href="css/style.css" rel="stylesheet" media="screen"/>
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.corner.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</head>	
<body>

<div class="m-wrapper"><div class="travel-wrapper">
	<div class="travel-header space-bottom">
		<div class="travel-header-menu">
			<!--a class="travel-header-name" href="/"><span>V</span><span>T</span><span>N</span></a-->
			<a class="travel-header-name" href="/"><img src="images/vtn-logo-white.png" alt="VTN Logo"/></a>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Buid your own Tour</a></li>
				<li><a href="#">Vietnam</a></li>
				<li><a href="#">Laos</a></li>
				<li><a href="#" class="last">Cambodia</a></li>
			</ul>
			<form method="GET">
			<input name="q" value=""/>
			<button>Search</button></form>
		</div><!-- end travel-header-menu -->
	</div><!-- end travel-header -->
	<div class="travel-content">
		<div class="travel-content-main">
			<div class="travel-top-news space-bottom travel-corner-right">
				<div class="label travel-corner-4b">TOP TRAVEL NEWS</div>
				<a href="#" class="thumb" ><img src="<?=$top['img']?>" /></a>
				<br/>
				<a href="#" class="title"><?=$top['title']?></a>
				<p>&nbsp;</p>
				<p class="intro"><?=$top['intro']?></p>
				<a href="#" class="more">More Detail</a>
			</div><!-- end travel-top-news -->
			
			<div class="travel-content-col d-left">
				<div class="travel-box space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<?$item = $list[0];?>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="<?=$item['img']?>" /></a>
						<a href="#" class="title"><?=$item['title']?></a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
					<?$i=0;foreach($list as $item){$i++;?>
						<?if($i>1){?>
						<li><a href="#"><?=$item['title']?></a></li>
						<?}?>
					<?}?>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
				<div class="travel-box purple space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
						<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
				<div class="travel-box blue space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
						<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
			</div><!-- travel-content-col d-left-->
			
			<div class="travel-content-col d-right">
				<div class="travel-box blue space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
						<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
				<div class="travel-box orange space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
						<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
				<div class="travel-box base space-bottom travel-corner">
					<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
					<div class="travel-box-one">
						<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
						<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
						<p>about 2 minutes ago</p>
					</div>
					<ul>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
						<li><a href="#">Africa rights advances 'reversed'</a></li>
						<li><a href="#">Nobel win for British IVF pioneer</a></li>
						<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
						<li><a href="#">Brazil set for run-off campaigns</a></li>
					</ul>
					<a class="travel-box-more" href="#">More from Travel News</a>
				</div><!-- end travel-box -->
			</div><!-- travel-content-col d-right-->
			
		</div><!-- end travel-content-main -->
		<div class="travel-content-right">
			<div class="travel-box purple space-bottom travel-corner">
				<h2 class="travel-box-head"><a href="#">Recommended by IP</a></h2>
				<div class="travel-box-one">
					<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
					<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
					<p>about 2 minutes ago</p>
				</div>
				<ul>
					<li><a href="#">Africa rights advances 'reversed'</a></li>
					<li><a href="#">Nobel win for British IVF pioneer</a></li>
					<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
					<li><a href="#">Brazil set for run-off campaigns</a></li>
					<li><a href="#">Africa rights advances 'reversed'</a></li>
					<li><a href="#">Nobel win for British IVF pioneer</a></li>
					<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
					<li><a href="#">Brazil set for run-off campaigns</a></li>
				</ul>
				<a class="travel-box-more" href="#">More from Travel News</a>
			</div><!-- end travel-box -->
			<div class="travel-box space-bottom travel-corner">
				<h2 class="travel-box-head"><a href="#">TRAVEL NEWS</a></h2>
				<div class="travel-box-one">
					<a href="#" class="thumb"><img src="images/thumb.jpg" /></a>
					<a href="#" class="title">Dutch MP Wilders goes on trial Dutch MP Wilders goes on trial</a>
					<p>about 2 minutes ago</p>
				</div>
				<ul>
					<li><a href="#">Africa rights advances 'reversed'</a></li>
					<li><a href="#">Nobel win for British IVF pioneer</a></li>
					<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
					<li><a href="#">Brazil set for run-off campaigns</a></li>
					<li><a href="#">Africa rights advances 'reversed'</a></li>
					<li><a href="#">Nobel win for British IVF pioneer</a></li>
					<li><a href="#">Nato oil tankers hit in Pakistan</a></li>
					<li><a href="#">Brazil set for run-off campaigns</a></li>
				</ul>
				<a class="travel-box-more" href="#">More from Travel News</a>
			</div><!-- end travel-box -->
		</div><!-- end travel-content-right -->
	</div><!-- end travel-content -->
	<div class="travel-footer">
		<div class="d-left space-left">
			<a href="#" class="logo"><img src="images/vtn-logo-black.png" alt="VTN Logo"/></a>
			<span class="travel-vtn">&copy; VTN</span>
			<div class="clear-both"></div>
			<p>Vietnam Travel News</p>
		</div>
		<div class="d-right">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Buid your own Tour</a></li>
				<li><a href="#">Vietnam</a></li>
				<li><a href="#">Laos</a></li>
				<li><a href="#" class="last">Cambodia</a></li>
			</ul>
		</div>
	</div><!-- end travel-footer -->
</div><!-- end wrapper --></div>
</body>
</html>