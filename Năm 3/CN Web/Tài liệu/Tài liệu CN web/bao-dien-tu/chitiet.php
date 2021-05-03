<?php 
include ('lib_db.php');
$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : "";
if ($id < 1) exit();
$cond = "where id=$id";
$sql = "select * from tin  $cond ";
$data = select_one($sql);
//print_r($data);exit();
?> 
<head>
	<title>Tin tuc trong tuan-<?php echo $data['title']?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<a href="list.php"> Trang chu  |</a> <a href="list.php?id=<?php echo $data['cid']=1?>">Xa hoi   |</a><a href="list.php?id=<?php echo $data['cid']=2?>">Van Hoa   |</a>
<a href="list.php?id=<?php echo $data['cid']=3?>">The Thao   |</a><a href="list.php?id=<?php echo $data['cid']=4?>">Giai Tri  |</a>
<br/>
<body>
<table><tr><td><strong><?php echo $data['title']?></strong></td><td><img width="100px" src="<?php echo $data['img']?>"/></td></tr></table><br/><br/><span style="font-zise:8px;"><strong><?php echo $data['description']?></strong></span>
<br/>
<br/>
<?php echo $data['body']?>
<br/>
</body>
</html>
