<?php
include("lib_db.php");
include("checklogin.php");
$user = checkLoggedUser();
$q = isset($_REQUEST["q"]) ? $_REQUEST["q"] : "";
$q = trim($q);
$cond = "";
if ($q){
	$cond = "where (name like '%{$q}%')";
	$cond .= " or (description like '%{$q}%')";
	$cond .= " or (body like '%{$q}%')";
}
$sql = " select * from mvc_product {$cond} ";
$datas = select_list($sql);
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
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
<script type="text/javascript">
//alert("js trong html");
</script>
<div id="support-button" class="support-button"><img src="images/support.jpg" /></div>
<div class="wrapper" id="wrapper">
	<div class="header">
		<div class="header-top">
			<a class="header-top-logo" href="#">
				<img src="images/logo.png" />
			</a>
			<div class="header-top-banner">
				<a class="banner" href="#">
					<img src="images/banner.jpg" />
				</a>
			</div><!-- end header-banner -->
			<div class="header-top-contact">
				<ul>
					<li>
						<a href="#">Gioi thieu</a>
					</li>
					<li>
						<a href="#">Lien he</a>
					</li>
				</ul>
				<div class="clear-both"></div>
				<form method="GET">
					<input name="q" value=""/>
					<button>Search</button>
				</form>
			</div><!-- end header-contact -->
		</div><!-- end header-top -->
		<div class="clear-both"></div>
		<ul class="header-menu">
			<li>
				<a href="#">Home</a>
			</li>
			<li>
				<a href="#">Van hoa</a>
				<ul class="header-menu-sub">
					<li>
						<a href="#">Giao duc</a>
					</li>
					<li>
						<a href="#">Nhip dieu tre</a>
					</li>
					<li>
						<a href="#">Du hoc</a>
					</li>
				</ul><!-- end header-menu -->
			</li>
			<li>
				<a href="#">Xa hoi</a>
			</li>
		</ul><!-- end header-menu -->
	</div><!-- end header -->
	<div class="clear-both"></div>
	<div class="content">
		<div class="news-box news-box-left">
			<a class="news-box-cat travel-corner-top" href="#">
				Account
			</a>
			<!--  ban ghi dau tien -->
			
			<ul class="news-box-other">
				<li>
					Xin chao <?php echo $user['name']?>!
				</li>
				<li>
					<a href="add.php">Th??m s???n ph???m</a>
				</li>
				<li>
					<a href="search_product.php">Danh s??ch s???n ph???m</a>
				</li>
				<li>
					<a href="logout.php">Tho??t</a>
				</li>
			</ul>
			<a class="news-box-more travel-corner-bottom" href="#">
				
			</a>
		</div>
		<div class="news-box news-box-right">
			<div class="search-form">
				<form action="search_product.php" method="get">
				<input type="text" name="q" value="<?php echo $q?>"/>
				<input type="submit" name="sub" value="Submit"/>
				</form>
			</div>
			<div class="clear-both"></div>
			<table>
			<tr>
				<td>
					STT
				</td>
				<td>
					Ten
				</td>
				<td>
					Gia
				</td>
				<td>
					Mota
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
			<?php $i=1; if($datas) foreach ($datas as $data){?>
				<tr>
					<td>
						<?php echo $i++;?>
					</td>
					<td>
						<?php echo $data['name']?>
					</td>
					<td>
						<?php echo $data['price']?>
					</td>
					<td>
						<?php echo $data['description']?>
					</td>
					<td>
						<a href="edit.php?id=<?php echo $data['id']?>">Edit</a>
						<a href="delete.php?id=<?php echo $data['id']?>">Delete</a>
					</td>
					
				</tr>
			<?php } ?>
			</table>
		</div>
	</div><!-- end content -->
	<div class="clear-both"></div>
	<div class="footer">
		footer
	</div><!-- end footer -->
	<div class="clear-both"></div>
</div><!-- end wrapper -->
<div id="log"></div>
</body>
</html>