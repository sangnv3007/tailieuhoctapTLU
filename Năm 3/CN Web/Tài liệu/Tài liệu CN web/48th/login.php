<?php 
include ('lib_db.php');
$username =$_REQUEST['username'];
$password =$_REQUEST['password'];
$sql = "select * from user  where username ='$username' ";
$result = exec_select($sql);
print_r($result);exit();
?> 
<html>
<head>
	<title>Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<body>
</body>
</html>