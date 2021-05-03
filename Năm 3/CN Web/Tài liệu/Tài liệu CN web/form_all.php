<?php
	include('lib.php');
	$data	= get_input_student();
	$errors = array();
	if($data['exec']){
		$errors		= validate_student($data);
		$ret = 0;
		if (!$errors){
			$ret = student_add($data);
			if ($ret === 1){
				include('form_ok.php');exit();
			}else{
				$errors = $ret;
			}
			//print_r($errors);
		}
	}
	include('form_student.php');exit();
?>