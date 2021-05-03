<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng ký sinh viên</title>
</head>
<body>
<div class="wrapper">
<h1>Đăng ký sinh viên</h1>
<?php
	$name 		= $_REQUEST['name'];
	$address 		= $_REQUEST['address'];
?>
<form action="form_get.php" method="get">
	<table>
		<tr>
			<td>Họ và tên</td>
			<td><input type="text" name="name" value="<?=$name?>"/></td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td><textarea name="address"><?=$address?></textarea></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="Đăng ký"/></td>
		</tr>
	</table>
</form>
</div>
<style>
.wrapper {margin:auto;width:900px;/*border:1px solid red;border-top:0;border-bottom:0;*/}
</style>
</body>
</html>