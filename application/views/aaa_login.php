<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>LOGIN - <?php echo $this->config->item('nama_aplikasi') . " " . $this->config->item('versi'); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="UMBKS - MI/MTs/MA - ">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="<?php echo base_url(); ?>___/css/bootstrap.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">
	<link rel="icon" type="image/png" href="<?php echo base_url(); ?>___/img/DSE.png">
</head>

<body>

	<div class="" style="min-height: 50px;">
		<nav class="navbar navbar-findcond navbar-fixed-top" style="background-color: #2700C2; min-height: 70px;">
			<div class="container">
				<div class="navbar-header" style="margin-top:10px;">
					<b><a class="navbar-brand" style="color: #fff; font-size:20px;"><?php echo $this->config->item('nama_aplikasi') . " " . $this->config->item('versi'); ?></a></b>
				</div>
			</div>
		</nav>
	</div>

	<div class="container">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form action="" method="post" name="fl" id="f_login" onsubmit="return login();">
	  <div class="panel panel-default top150">
      
			<div class="panel-heading"><h4 style="margin: 5px; text-align:center;">SILAHKAN LOGIN</h4></div>
			<div class="panel-body">
            <center><img src="<?php echo base_url('___/img/DSE.png') ?>" width="130px" height="130px"></center><br>
				<div id="konfirmasi"></div>
				<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i>&nbspUsername</span>
					<input type="text" id="username" name="username" autofocus value="" placeholder="Username" class="form-control" required/>
				</div> <!-- /field -->
				
				<div class="input-group top15">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i>&nbspPassword</span>
					<input type="password" id="password" name="password" value="" placeholder="Password" class="form-control" required/>
				</div> <!-- /password -->
				<div class="login-actions">
					<button class="button btn btn-dafault btn-large col-lg-12 top15" style="background-color:#2700C2; color:#FFF;">LOGIN</button>
				</div> <!-- .actions -->
			</div>
		</div> <!-- /login-fields -->
		
	</form>
		</div>
		<div class="col-md-4"></div>
	</div>

	<div class="col-md-12 footer" style="background-color:  #2700C2; color: #fff;">
		<b style="color: #fff;" <?php echo base_url(); ?>adm><?php echo $this->config->item('nama_aplikasi') . " " . $this->config->item('versi') . "<br>" . " &copy " . $this->config->item('nama_sekolah') ?>
	</div>

	<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script>
	<script src="<?php echo base_url(); ?>___/js/bootstrap.js"></script>
	<script type="text/javascript">
		base_url = "<?php echo base_url(); ?>";
		uri_js = "<?php echo $this->config->item('uri_js'); ?>";
	</script>
	<script src="<?php echo base_url(); ?>___/js/aplikasi.js"></script>
</body>

</html>