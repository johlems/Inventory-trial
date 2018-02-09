<?php 
	require_once('../class/Request.php');
	if(isset($_POST['item_id'])) {
		$item_id = $_POST['item_id'];
		// Status Validations //
		$result = $request->request_done($item_id);
	}
		$request->Disconnect();