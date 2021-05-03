<?php
include("lib_db.php");
//nho sua lai ten db trong file lib_db.php dong 12
$numImages = 1;


//get input
$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : "";
$id = $id * 1;
$limit = 1;

$p = isset($_REQUEST["p"]) ? $_REQUEST["p"] : 0;
if ($p < 1) $p = 1;
$offset = ($p - 1) * $limit;
$baseUrl = 'list.php?id=' . $id . '&p=';
//echo "id=[$id]"; exit();
//tao sql
$sql ="select * from mvc_category where id=" . $id;
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$currentCategory = select_one($sql);

//sub category 
$cid = $currentCategory['pid'] 
		? $currentCategory['pid'] : 
		$currentCategory['id'];
$sql = "select * from mvc_category where pid=$cid ";
$subcategories = select_list($sql);

//tao sql
$sql ="select * from mvc_product where cid=" . $id;
$sql .=" limit $offset, $limit" ;
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$datas = select_list($sql);
$sql ="select count(*) as count from mvc_product where cid=" . $id;
$result = select_one($sql);
$total = $result['count'] ;
//echo "total = {$total} " ;exit();

$numPage = ceil ($total/$limit);

//print_r($datas);exit();

$sql = "select * from mvc_category where top > 0";
//echo "sql=[$sql]"; exit();
//Thuc thi sql

$categories = select_list($sql);


$sql = "select * from mvc_category where `left` > 0";
//echo "sql=[$sql]"; exit();
//Thuc thi sql

$leftCategories = select_list($sql);

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
			<ul class="header-menu">
				<?php if ($leftCategories) foreach ($leftCategories as $cate) {?>
				<li>
					<a href="list.php?id=<?php echo $cate['id']?>"><?php echo $cate['name']?></a>
				</li>
				<?php } ?>
			</ul><!-- end header-menu -->
		</div>
		<div class="news-box news-box-right">
			<h1> Cac chuyen muc con</h1>
			<?php if ($subcategories) {?>
			<ul>
			<?php foreach ($subcategories as $sub) {?>
			<li>
				<a href="list.php?id=<?php echo $sub['id']?>">
				<?php echo $sub['name']?>
				</a>
			</li>
			<?php } ?>
			</ul>
			<?php } ?>
			<h1>Cac bai viet trong <?php echo $currentCategory['name'] ?></h1>
			<ul>
			<?php $i=1; if($datas) foreach ($datas as $data){?>
			<?php 
				if ($i > $numImages) break;
				$i++;
			?>
				<li>
					<a href="detail.php?id=<?php echo $data['id']?>">
					<img src="<?php echo $data['img']?>" />
					</a>
					<a href="detail.php?id=<?php echo $data['id']?>">
					<?php echo $data['name']?>
					</a>
					<p><?php echo $data['description']?></p>
					
					<a href="detail.php?id=<?php echo $data['id']?>">
					Doc tiep
					</a>
				</li>
			<?php } else {?>
			Khong co bai viet nao
			<?php }?>
			</ul>
			<?php if(count($datas) > $numImages){?>
			<h1>Cac bai viet khac</h1>
			<ul>
			<?php $i=0; foreach ($datas as $data){?>
			<?php 
				$i++;
				if ($i <= $numImages) continue;
				
			?>
				<li>
					<a href="detail.php?id=<?php echo $data['id']?>">
					<?php echo $data['name']?>
					</a>
				</li>
			<?php } ?>
			</ul>
			<?php } ?>
			
			<?php if ($numPage > 1) for($i=1;$i<= $numPage;$i++){?>
			<a href="<?php echo $baseUrl . $i?>"><?php echo $i?></a>
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
