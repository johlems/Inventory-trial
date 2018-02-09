<?php 
require_once('../class/Office.php');
if(isset($_POST['pid'])){
	$pid = $_POST['pid'];
	$res = $office->get_position($pid);
	if($res > 1){
		$result['valid'] = true;
		$result['pid'] = $res['off_id'];
		$result['desc'] = $res['off_desc'];;
	}else{
		$result['valid'] = false;
	}
	echo json_encode($result);
}

$office->Disconnect();