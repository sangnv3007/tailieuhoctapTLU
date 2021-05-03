<?php
include("lib_db.php");
include("checklogin.php");
$user = checkLoggedUser();
//nho sua lai ten db trong file lib_db.php dong 12
//print_r($_REQUEST);exit();
//get input
$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : 0;
$cid = isset($_REQUEST["cid"]) ? $_REQUEST["cid"] : "";
$name = isset($_REQUEST["name"]) ? $_REQUEST["name"] : "";
$price = isset($_REQUEST["price"]) ? $_REQUEST["price"] : "";
$description = isset($_REQUEST["description"]) ? $_REQUEST["description"] : "";
$body = isset($_REQUEST["body"]) ? $_REQUEST["body"] : "";
//tao sql
$sql = "UPDATE product  ";
$sql .= " set";
$sql .= "	cid='{$cid}', ";
$sql .= "	name='{$name}', ";
$sql .= "	price='{$price}', ";
$sql .= "   description='{$description}', ";
$sql .= "	body='{$body}' ";
$sql .= " where id={$id}";
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$ret = exec_update($sql);
header("Location:search_product.php");
exit();

