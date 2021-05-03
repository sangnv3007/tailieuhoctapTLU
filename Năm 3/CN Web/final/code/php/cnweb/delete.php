<?php
	include("lib_db.php");
	$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : 0;
	if ($id<  1) return ;
	//tao sql
	$sql = "select * from grab_content 
	where id={$id}";
	//echo $sql;exit();
	//thuc thi cau lenh sql
	$result = select_one($sql);
	//print_r($result);exit();
	if (!$result) return ;
	//print_r($result);exit();
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Travel Newsphp</title>
	<meta http-equiv="Content-Type" content="text/shtml; charset=utf-8" />
	<link rel="icon" href="images/favicon.png" type="image/png" />
	<link type="text/css" href="css/style.css" rel="stylesheet" media="screen"/>
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.corner.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</head>	
<body>
<style>
.form label{width:200px;float:left;}
.form input{width:200px;float:left;}
.form textarea{width:200px;float:left;}
</style>
<div class="m-wrapper"><div class="travel-wrapper">
	<div class="travel-header space-bottom">
		<div class="travel-header-menu">
			<!--a class="travel-header-name" href="/"><span>V</span><span>T</span><span>N</span></a-->
			<a class="travel-header-name" href="/"><img src="images/vtn-logo-white.png" alt="VTN Logo"/></a>
			<ul>
				<li><a href="#">Homephp</a></li>
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
			<h1>Xoa tin bai</h1>
			<br/>
			<form class="form" action="delete_exec.php" method="post">
				<input type="hidden" name="id" value="<?php echo $result["id"]?>"/>
				<label>Category</label> <?php echo $result["cid"]?>
				<div class="clear-both"></div>
				<label>Image</label><?php echo $result["img"]?>
				<div class="clear-both"></div>
				<label>Title</label><?php echo $result["title"]?>
				<div class="clear-both"></div>
				<label>Code</label><?php echo $result["code"]?>
				<div class="clear-both"></div>
				<label>Description</label><?php echo $result["description"]?>
				<div class="clear-both"></div>
				<label>Body</label><?php echo $result["body"]?>
				<div class="clear-both"></div>
				<label>Status</label><?php echo $result["status"]?>
				<div class="clear-both"></div>
				<button >OK</button>
			</form>
			<br/>
			<br/>
		</div><!-- end travel-content-main -->
		<div class="travel-content-right">
			<ul>
				<li><a href="form.php">Add</a></li>
				<li><a href="search.php">Search</a></li>
			</ul>
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