<!DOCTYPE html>
<html lang="en">

<?php 
    require_once('../class/Item.php');
    if(isset($_GET['choice'])) {
    
    $choice = $_GET['choice'];
    $reports = $item->item_report($choice);
?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Rj Globus Solutions - Inventory</title>

    <!-- Bootstrap Core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-theme.min.css">
    <link href="../assets/css/dataTables.bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <center>
        <img src="../img/rjlogo2.png" class="img-responsive" />
    </center>
<br />

    <div class="table-responsive">
       <table id="myTable-report" class="table table-bordered table-hover" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>IP Address</th>
            <th>Hostname</th>
            <th>Function</th>
            <th>Storage Capacity</th>
            <th>Memory Capacity</th>
        </tr>
    </thead>

    <tbody>
        <?php foreach($reports as $r): 
            $fN = $r['emp_fname'];
            $mN = $r['emp_mname'];
            $lN = $r['emp_lname'];
            $mN = $mN[0];
            $fullName = "$fN $mN. $lN";
            $fullName = ucwords($fullName);
        ?>
            <tr>
                <td><?= $r['item_name']; ?></td>
                <td><?= $r['item_serno']; ?></td>
                <td><?= $r['item_modno']; ?></td>
                <td><?= $r['item_brand']; ?></td>
                <td><?= $r['item_amount']; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
</div>

    <script type="text/javascript">
        print();
    </script>
</body>
</html>

<?php

    // echo $choice;
} //end isset