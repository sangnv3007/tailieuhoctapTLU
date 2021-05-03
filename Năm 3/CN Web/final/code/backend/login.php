<?php
include("lib_db.php");
include("checklogin.php");
$user = getLoggedUser();
if ($user) {
	header("Location:account.php");
	exit();
}
//nho sua lai ten db trong file lib_db.php dong 12
//1. get input
$username = isset($_REQUEST["username"]) ? $_REQUEST["username"] : "";
$password = isset($_REQUEST["password"]) ? $_REQUEST["password"] : "";

$error = '';
$checkLogin = 1;
$user = 0;
if (isset($_REQUEST["username"])){
	unset($_SESSION['user']);
	//da nhap thong tin
	//2. Kiem tra
	//2.1.1 tao sql
	$sql ="select * from mvc_user";
	$sql .=" where username='{$username}'";
	//echo "sql=[$sql]"; exit();
	//2.1.2 Thuc thi sql
	$user = select_one($sql);
	//print_r($user);exit();
	//co user
	if (!$user){
		//thuc hien co user o day
		$checkLogin = 0;
		$error = 'Khong ton tai username';
	}else{
		//kiem tra pass
		if (md5($password) != $user['password']){
			$checkLogin = 0;
			$error = 'Password khong dung';
		}
	}
	//dung
	if ($checkLogin){
		//session_start();
		setLoggedUser($user);
		//$_SESSION['user'] = $user;
		//print_r($_SESSION['user']);exit();
		//echo "Ban da login thanh cong,username[$username],password=[$password]";
		//exit();
		//chuyen den trang account
		header("Location:account.php");
		exit();
	}
}
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
				Login
			</a>
			<!--  ban ghi dau tien -->
			
			<ul class="news-box-other">
				<?php  if ($error){ ?>
				<li><?php echo $error ;?></li>
				<?php } ?>
				<li>
					<form action="login.php" method="post">
						Username: 
						<input type="text" name="username" value="<?php echo $username ?>"/>
						<br/>
						Password: 
						<input type="password" name="password" value=""/>
						<br/>
						<input type="submit" value="Login"/>
					</form>
				</li>
			</ul>
			<a class="news-box-more travel-corner-bottom" href="#">
				
			</a>
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