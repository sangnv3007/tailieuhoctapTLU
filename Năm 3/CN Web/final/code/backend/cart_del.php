<?php
include("lib_db.php");
$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : 0;
$cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : array();
if ($id){
	unset($cart[$id]);
	$_SESSION['cart'] = $cart;
}
$datas = array();
if ($cart){
	foreach ($cart as $id =>$num){
		$ids[] = $id;
	}
	$ids = implode(",",$ids);
	$sql ="select * from mvc_product where id in ($ids)";
	//echo "sql=[$sql]"; exit();
	//Thuc thi sql
	$datas = select_list($sql);
}

//print_r($datas);exit();


$sql = "select * from mvc_category where pid =0  and top > 0";
//echo "sql=[$sql]"; exit();
//Thuc thi sql

$topCategories = select_list($sql);

if ($topCategories) foreach ($topCategories as &$cat){
	$cid = $cat['id'];
	$sql = "select * from mvc_category where pid=$cid ";
	$subcategories = select_list($sql);
	$cat['subs'] = $subcategories;
}
//print_r($topCategories);exit();

//print_r($homeCategories);exit();
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
			<?php $i = 0; $count = count($topCategories);?>
			<li class="first">
				<a href="#">Home</a>
			</li>
			<?php if ($topCategories) foreach ($topCategories as $cate) {?>
			<?php $i++;?>
			<li class="<?php if ($i == $count){?>last<?php }?>">
				<a href="list.php?id=<?php echo $cate['id']?>">
					<?php echo $cate['name']?>
				</a>
				<?php if ($cate['subs']) {?>
				<ul class="menu-sub">
					<?php foreach ($cate['subs'] as $subItem) {?>
					<li>
						<a href="list.php?id=<?php echo $subItem['id']?>" title="<?php echo $subItem['name']?>">
							<?php echo $subItem['name']?>
						</a>
					</li>
					<?php } ?>
				</ul>
				<?php } ?>
			</li>
			<?php } ?>
		</ul><!-- end header-menu -->
	</div><!-- end header -->
	<div class="clear-both"></div>
	<div class="content">
		<div class="news-box news-box-left">
			<a class="news-box-cat travel-corner-top" href="#">
				Gio hang
			</a>
			<ul class="news-box-other">
			<?php $i = 0;
				$count = count($datas);
			?>
			<?php if($datas) foreach($datas as $data) {?>
				<?php $i++;?>
				<li class="<?php if ($i == 2) {?> first<?php }?>
					<?php if ($i == $count) {?> last<?php }?>"
				><a href="detail.php?id=<?php echo $data['id'] ?>">
					<?php echo $data['name'] ?>
				</a>
				&nbsp;&nbsp;
				<a href="cart_del.php?id=<?php echo $data['id'] ?>">
					Xoa
				</a>
				</li>
				
			<?php } ?>
			</ul>
		</div>
		<div class="news-box news-box-right" style="width:600px">
			
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