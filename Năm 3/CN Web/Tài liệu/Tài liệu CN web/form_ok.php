<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng ký sinh viên</title>
</head>
<body>
<div class="wrapper">
<h1>Đăng ký sinh viên</h1>
Bạn đã đăng ký thành công.
Thông tin bạn vừa nhập là:
<table>
		<tr>
			<td>Họ và tên <span class="error">*</span></td>
			<td><?=$data['name']?></td>
		</tr>
		<tr>
			<td>Ngày tháng năm sinh <span class="error">*</span></td>
			<td><?=$data['birthday']?></td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td><?=$data['address']?></td>
		</tr>
		<tr>
			<td><a href="form_all.php">Back</a></td>
			<td>&nbsp;</td>
		</tr>
	</table>
</div>
<style>
.wrapper {margin:auto;width:900px;/*border:1px solid red;border-top:0;border-bottom:0;*/}
</style>
</body>
</html>