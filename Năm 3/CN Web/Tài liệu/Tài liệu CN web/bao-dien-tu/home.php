<?php 
include ('lib_db.php');
$id = 0;
$p = 1;
$limit = 20;
$cond = $id ? "where cid=$id" : '';
$sql = "select * from tin  $cond limit " . (($p - 1 ) * $limit ). "," . $limit ;
$csql = "select count(*) as count from tin $cond";
$result = exec_select($sql);
$count = exec_select($csql);
//print_r($count);exit();
if ($count) $count= $count[0]['count'];
//print_r($result);exit();
?> 
<head>
	<title>Trang Chu</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<br/>
<?php
	//$count = count($result);
	$max = $count / 10;
	for($i=1;$i<$max;$i++){
?>
<a href="http://localhost/list.php<?php echo $i;?>"><a>
<?php
}
?>
<a href="list.php"> Trang chu  |</a> <a href="list.php?id=<?php echo $data['cid']=1?>">Xa hoi   |</a><a href="list.php?id=<?php echo $data['cid']=2?>">Van Hoa   |</a>
<a href="list.php?id=<?php echo $data['cid']=3?>">The Thao   |</a><a href="list.php?id=<?php echo $data['cid']=4?>">Giai Tri  |</a>

<table border=1>


<?php 

foreach ($result as $data){
?>

<tr>
	<table>
		<tr>
		 <td><a href="chitiet.php?id=<?php echo $data['id'];?>" ><img src="<?php echo $data['img'];?>" width=100px;/></a></td>
			<td>
				<table>
					<tr>
						<td><a href="chitiet.php?id=<?php echo $data['id'];?>" ><?php echo $data['title'];?></a></td>
					</tr>
					<tr>
						<td><?php echo $data['description'];?></td>
					</tr>
					
				</table>
			</td>
		</tr>
	</table>
	
</tr>


<?php
$max = $count/$limit;
}?>
</table>
<?php for($i=1;$i<=$max;$i++){
?>
<a href="list.php?<?php if ($id > 0){?>id=<?php echo $id ?>&<?php }?>p=<?php echo $i ;?>" ><?php echo $i ;?></a>
<?php }?>
<?php return?>
<?php for($i=1;$i<=$max;$i++){
	$url = $_SERVER['REQUEST_URI'];
	$url = preg_replace('/\&p=[0-9]*&/i','&',$url);
	$url = preg_replace('/\&p=[0-9]*/i','&',$url);
	$url = preg_replace('/\?p=[0-9]*&/i','?',$url);
	$url = preg_replace('/\?p=[0-9]*/i','?',$url);
	$url = preg_replace('/\?$/i','',$url);
	$url = preg_replace('/\&$/i','',$url);
	if (strpos($url,'?')){
		$url .= '&p=' . $i;
	}else{
		$url .= '?p=' . $i;
	}
	//print_r($_SERVER);exit();
?>
<a href="<?php echo $url ;?>" ><?php echo $i ;?></a>
<?php }?>