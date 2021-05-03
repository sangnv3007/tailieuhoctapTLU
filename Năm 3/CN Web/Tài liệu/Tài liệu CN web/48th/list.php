<?php 
include ('lib_db.php');
$q = $_REQUEST['q'];

if ($q) {
	$sql = "select * from user where (username like '%" . $q . "%') OR (description like '%" . $q . "%') ";
	
}else{
	$sql = "select * from user  ";
}
//print_r($sql);exit();
$result = select_one($sql);
print_r($result);exit();
if (!$result){
	echo 'Khong co ban ghi nao';
	return;
}
$no = 1;
?> 
<html>
<head>
	<title>Danh sach user</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<body>
	<table border=1>
		<tr>
			<td>STT</td>
			<td>Name</td>
			<td>Description</td>
		</tr>
		<?php foreach ($result as $data){?>
		<tr>
			<td><?php echo $no++?></td>
			<td><?php echo $data['username']?></td>
			<td><?php echo $data['description']?></td>
		</tr>
		<?php }?>
	</table>
</body>
</html>