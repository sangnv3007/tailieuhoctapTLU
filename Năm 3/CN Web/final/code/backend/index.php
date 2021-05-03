<?php
include("lib_db.php");
//nho sua lai ten db trong file lib_db.php dong 12


//tao sql
$sql ="select * from mvc_product";
//$sql .=" where top > 0 order by top desc limit 4";
$sql .="  order by top desc limit 4";
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$result = select_list($sql);

//print_r($result);exit();


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
$homeCategorySql = "select * from mvc_category where home > 0";
//echo "sql=[$homeCategorySql]"; exit();
//Thuc thi sql

$homeCategories = select_list($homeCategorySql);
if ($homeCategories) foreach ($homeCategories as &$cat){
	$cid = $cat['id'];
	$sql = "select * from mvc_product where cid=$cid limit 5";
	$products = select_list($sql);
	$cat['products'] = $products;
}
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
				Travel news
			</a>
			<!--  ban ghi dau tien -->
			<?php 
			$data = $result[0];
			?>
			<div class="news-box-top">
				<a class="news-box-top-thumb" href="#">
					<img src="<?php echo $data['img'] ?>"/>
				</a>
				<div class="news-box-description">
					<a class="news-box-top-title" href="detail.php?id=<?php echo $data['id'] ?>">
						<?php echo $data['name'] ?>
					</a>
					<p>about 2 minutes ago</p>
				</div>
			</div>
			<!--  end ban ghi dau tien -->
			<ul class="news-box-other">
			<?php $i = 0;
				$count = count($result);
			?>
			<?php if($result) foreach($result as $data) {?>
				<?php $i++;?>
				<?php if ($i == 1) continue; ?>
				<li class="<?php if ($i == 2) {?> first<?php }?>
					<?php if ($i == $count) {?> last<?php }?>"
				><a href="detail.php?id=<?php echo $data['id'] ?>">
					<?php echo $data['name'] ?>
				</a>
				&nbsp;&nbsp;
				<a href="cart.php?id=<?php echo $data['id'] ?>">
					Cart
				</a>
				</li>
				
			<?php } ?>
			</ul>
			<a class="news-box-more travel-corner-bottom" href="#">
				More From Travel news
			</a>
		</div>
		<div class="news-box news-box-right" style="width:600px">
			<?php if ($homeCategories) foreach ($homeCategories as $cate) {?>
			<div class="news-box">
				<a class="news-box-cat travel-corner-top" href="#">
					<?php echo $cate['name']?>
				</a>
				<?php $products = $cate['products'] ?>
				<?php if ($products) foreach ($products as $data) {?>
				<a href="detail.php?id=<?php echo $data['id']?>"><?php echo $data['name']?></a>
				<?php } ?>
			</div>
			<?php } ?>
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