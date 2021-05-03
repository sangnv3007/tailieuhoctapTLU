<?
	include("lib_db.php");
	$sql = "select id,title,intro from news 
	order by created desc limit 10";
	//echo $sql;exit();
	$ret = exec_select($sql);
	print_r($ret);
?>
