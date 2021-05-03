<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng ký sinh viên</title>
</head>
<body>
<div class="wrapper">
<h1>Đăng ký sinh viên</h1>
<?$i=0;if($errors) foreach($errors as $er){$i++;?>
<?if($i>1){?><br/><?}?><span class="error"><?=$er?></span>
<?}?>
<form action="form_all.php" action="get">
	<input type="hidden" name="exec" value="1"/>
	<table>
		<tr>
			<td>Họ và tên <span class="error">*</span></td>
			<td><input type="text" name="name" value="<?=$data['name']?>"/></td>
		</tr>
		<tr>
			<td>Ngày tháng năm sinh <span class="error">*</span></td>
			<td><input type="text" name="birthday" value="<?=$data['birthday']?>"/></td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td><textarea name="address"><?=$data['address']?></textarea></td>
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
span.error{color:red;}
</style>
</body>
</html>