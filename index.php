<!DOCTYPE html>
<html>
<head>
	<title>Rj Globus Solutions - Inventory</title>
 	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  	  <!-- CSS TABS -->
	  <link rel="stylesheet" href="assets/css/style.css" />
	  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	  <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css" />
	  <link rel="shortcut icon" href="img/favicon2.png" />
</head>

<body id ="main">
	<div class="container"> <br/>
	  <br/>
	  <br/>
  	<div class="row text-center ">
    	<div class="col-md-12"><br/>
      	<span class="loginPage" style="font-size:40px; font-weight:bold; color:green;" >RJ GLOBUS</span>
      	<span style="font-size:18px; color: #ccc;">Inventory Management</span></div>
  	</div>
  	<br/>
 	<div class="row ">
    	<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
      		<div class="panel panel-primary" id="form-login">
      			<div class="panel-heading"> <strong> Enter Login Details </strong> </div>
        <div class="panel-body">
          	<form onSubmit="return validationForm();" role="form" id="form" method="post">
        <br />

        <div class="form-group input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
        	<input type="text" name="username" id="un" class="form-control" placeholder="Your Username" autocomplete="off" autofocus />
        </div>

        <div class="form-group input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="password" name="password" id="pwd" class="form-control"  placeholder="Your Password" autocomplete="off" />
        </div>
            <div class="form-group">
              <label class="checkbox-inline"> </label>
              <span class="pull-right"> <a href="forget-password.php" >Forget password ?</a></span></div>
            <hr />
            <div align="center">
              <button type="submit" id="login" class="btn btn-success" style="width: 100%;"><i class="glyphicon glyphicon-user" ></i>&nbsp;Login</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->

   <script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="assets/js/login.js"></script>

</body>
</html>