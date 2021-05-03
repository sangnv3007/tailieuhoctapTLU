<?php
include("lib_db.php");
include("checklogin.php");
$user = checkLoggedUser();
//nho sua lai ten db trong file lib_db.php dong 12
//print_r($_REQUEST);exit();
//get input
$cid = isset($_REQUEST["cid"]) ? $_REQUEST["cid"] : "";
$name = isset($_REQUEST["name"]) ? $_REQUEST["name"] : "";
$price = isset($_REQUEST["price"]) ? $_REQUEST["price"] : "";
$description = isset($_REQUEST["description"]) ? $_REQUEST["description"] : "";
$body = isset($_REQUEST["body"]) ? $_REQUEST["body"] : "";
//tao sql
$sql = "INSERT INTO product (cid,name,price,description,body) ";
$sql .= " VALUES (";
$sql .= "	'{$cid}', ";
$sql .= "	'{$name}', ";
$sql .= "	'{$price}', ";
$sql .= " '{$description}', ";
$sql .= "	'{$body}' ";
$sql .= ")";
//echo "sql=[$sql]"; exit();
//Thuc thi sql
$ret = exec_update($sql);
header("Location:search_product.php");
exit();
