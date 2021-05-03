<?php
	include("lib_db.php");
	$sql = "select * from grab_content order by id desc
	 limit 10 ";
	//echo $sql;exit();
	//thuc thi cau lenh sql
	$result = exec_select($sql);
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
			<h1>Danh sach tin bai</h1>
			<br/>
			<table>
			<tr>
				<th>Id</th>
				<th>Title</th>
				<th>description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<?php foreach ($result as $item) {?>
			<tr>
				<td><?php echo $item['id'];?></td>
				<td><?php echo $item['title'];?></td>
				<td><?php echo $item['description'];?></td>
				<td><a href="edit.php?id=<?php echo $item['id'];?>">Edit</a></td>
				<td><a href="delete.php?id=<?php echo $item['id'];?>">Delete</a></td>
			</tr>
			<?php } ?>
			</table>
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