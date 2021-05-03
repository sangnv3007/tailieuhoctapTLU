<?php
include("lib_db.php");
include("checklogin.php");
$user = checkLoggedUser();
//nho sua lai ten db trong file lib_db.php dong 12

//get input
//echo "id=[$id]"; exit();
//tao sql
$sql = "select * from mvc_category";
//echo "sql=[$sql]"; exit();
//Thuc thi sql

$categories = select_list($sql);
//print_r($categories);exit();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Thêm sản phẩm</title>
	<meta http-equiv="Content-Type" content="text/shtml; charset=utf-8" />
	<link rel="icon" href="images/favicon.png" type="image/png" />
	<link type="text/css" href="css/admin.css" rel="stylesheet" media="screen"/>
</head>

<body>
<div class="header">
</div>
<div class="content">
	<h1>Thêm sản phẩm</h1><!-- ten san pham -->
	<br/>
	<form action="add_exec.php" method="post">
		<div class="row-edit">
			<label>Chuyên mục</label>
			<select name="cid">
			<?php foreach ($categories as $cate) {?>
				<option value="<?php echo $cate['id']?>"><?php echo $cate['name']?></option>
			<?php } ?>
			</select>
		</div>
		<div class="row-edit">
			<label>Tên sản phẩm</label>
			<input name="name" value=""/>
		</div>
		<div class="row-edit">
			<label>Giá sản phẩm</label>
			<input name="price" value=""/>
		</div>
		<div class="row-edit">
			<label>Mô tả</label>
			<input name="description" value=""/>
		</div>
		<div class="row-edit">
			<label>Chi tiết</label>
			<textarea name="body">
			</textarea>
		</div>
		<div class="row-edit">
			<button type="submit" class="save">Tạo</button>
			<button type="button" onclick="return boquaForm();">Bỏ qua</button>
		</div>
	</form>
</div>
<div class="footer">
</div>
<script>
function boquaForm(){
	window.location = 'account.php';
	return false;
}
</script>
</body>
</html>
