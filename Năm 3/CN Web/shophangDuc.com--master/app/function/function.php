<?php
function changeTitle($str,$strSybol='_',$case=MB_CASE_LOWER){
	$str=trim($str);
	if($tri=="") return "";
	$str=str_replace('"','',$str);
	$str=str_replace("'", '', $str);
	$str=stripUnicode($str);
	$str=mb_convert_case($str);
	$str=preg_replace('/[\W|_]+/', $strSybol, $str);
	return $str;
}
function stripUnicode($str){
	if(!$str)return;
	$unicode=array(
		'a'=>'á|à|ạ|ã',
		'A'=>'Á|Ạ|Ã',
		);
	foreach ($unicode as $key => $value) {
		# code...
		$arr=explode("|", $value);
		$str=str_replace($arr, $key, $str);
	}
	return $str;
}
?>