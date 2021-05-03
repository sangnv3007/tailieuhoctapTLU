<?php
function get_input_student(){
	$ret['exec']	= $_REQUEST['exec'];
	$ret['name']	= $_REQUEST['name'];
	$ret['birthday']	= $_REQUEST['birthday'];
	$ret['address']	= $_REQUEST['address'];
	return $ret;
}
function validate_student($data){
	$err = array();
	if(!$data || !$data['name']){
		$err[] = "Bạn hãy nhập Họ và tên";
	}
	if(!$data || !$data['birthday']){
		$err[] = "Bạn hãy nhập Ngày tháng năm sinh";
	}
	return $err;
}
function student_add($data){
	$err = array();
	if(strlen($data['name']) > 20){
		$err[] = "Họ và tên không được quá 20 ký tự";
	}
	if ($err) return $err;
	return 1;
}
?>
