<?php
include("lib_db.php");
//nho sua lai ten db trong file lib_db.php dong 12

//get input
$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : "";
$id = $id * 1;
//echo "id=[$id]"; exit();
//tao sql
$sql ="select * from mvc_product where id=" . $id;
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$result = select_one($sql);


$sql = "select * from mvc_category where top > 0";
//echo "sql=[$sql]"; exit();
//Thuc thi sql

$categories = select_list($sql);

//cac tin khac
//$sql = "select * from mvc_product where cid=" . $result['cid'];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title><?php echo $result['name']?></title>
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
			<a class="header-top-logo" href="index.php">
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
					<li>
						<a href="login.php">Login</a>
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
			<?php if ($categories) foreach ($categories as $cate) {?>
			<li>
				<a href="list.php?id=<?php echo $cate['id']?>"><?php echo $cate['name']?></a>
			</li>
			<?php } ?>
		</ul><!-- end header-menu -->
	</div><!-- end header -->
	<div class="clear-both"></div>
	<div class="content">
		<div class="news-box news-box-left">
			Left
		</div>
		<div class="news-box news-box-right">
			<h1><?php echo $result['name']?></h1>
			<p><b><?php echo $result['description']?></b></p>
			<?php echo $result['body']?>
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
