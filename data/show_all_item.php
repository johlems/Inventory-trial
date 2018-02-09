<?php 
require_once('../class/Item.php'); 
$allItem = $item->get_all_items();
// echo '<pre>';
// 	print_r($allItem);
// echo '</pre>';
?>

<br />
<table id="myTable" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>IP Address</th>
	        <th>Hostname</th>
	        <th>Function</th>
	        <th>Storage Capacity</th>
	        <th>Memory Capacity</th> <!--
	        <th>Operating System</th>
	        <th>Processor</th>
	        <th>Storage Usage</th>
	        <th>Memory Usage</th>
	        <th>CPU Usage</th> -->
	        <th><center>Action</center></th>
	    </tr>
	</thead>
    <tbody>
		<?php 
			foreach ($allItem as $i) {
				# code...
				$fN = $i['emp_fname'];
				$mN = $i['emp_mname'];
				$mN = $mN[0].'.';
				$lN = $i['emp_lname'];
				$fullName = "$fN $mN $lN";
				$fullName = ucwords($fullName);
		?>
			<tr>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $i['item_name']; ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo $i['item_serno']; ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo ucwords($i['item_modno']); ?></td>
				<td onclick="item_profile('<?php echo $i['item_id']; ?>');"><?php echo ucwords($i['item_brand']); ?></td>
				<td <?php $cond = $i['item_amount']; if($cond == 1){echo 'class="text-success"';} if($cond == 2){echo 'class="text-danger"';}?>
				onclick="item_profile('<?php echo $i['item_amount']; ?>');">
					<strong>
						<?php echo ucfirst($i['item_amount']); ?>
					</strong>
				</td>
				<td align="center">
					<button onclick="fill_update_modal('<?php echo $i['item_id']; ?>');" class="btn btn-warning btn-sm"
					id="btn-edit"<?php if($cond != 1){echo 'enable';} ?>>
					<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
					Edit
					</button>
					<button class="btn btn-success btn-sm" onclick="item_profile('<?php echo $i['item_id']; ?>');">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					View
					</button>
				</td>
			</tr>
		<?php		
			}//end foreach
		 ?>
    </tbody>
</table>


<?php 
$item->Disconnect();
 ?>

<!-- for the datatable of item -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable();
	});



</script>
