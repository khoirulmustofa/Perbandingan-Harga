
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
<meta charset="UTF-8" />
<title>BCORE Admin Dashboard Template | Data Tables</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<!-- GLOBAL STYLES -->
<!-- GLOBAL STYLES -->
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/theme.css" />
<link rel="stylesheet" href="assets/css/MoneAdmin.css" />
<link rel="stylesheet"
	href="assets/plugins/Font-Awesome/css/font-awesome.css" />
<!--END GLOBAL STYLES -->

<!-- PAGE LEVEL STYLES -->
<link href="assets/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
<!-- END PAGE LEVEL  STYLES -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="padTop53 ">

	<!-- MAIN WRAPPER -->
	<div id="wrap">


		<!-- HEADER SECTION -->
		<div id="top">

			<nav class="navbar navbar-inverse navbar-fixed-top "
				style="padding-top: 10px;">
				<a data-original-title="Show/Hide Menu" data-placement="bottom"
					data-tooltip="tooltip"
					class="accordion-toggle btn btn-primary btn-sm visible-xs"
					data-toggle="collapse" href="#menu" id="menu-toggle"> <i
					class="icon-align-justify"></i>
				</a>
				<!-- LOGO SECTION -->
				<header class="navbar-header">

					<a href="index.html" class="navbar-brand"> <img
						src="assets/img/logo.png" alt="" /></a>
				</header>
				<!-- END LOGO SECTION -->


			</nav>

		</div>
		<!-- END HEADER SECTION -->



		<!-- MENU SECTION -->

		<!--END MENU SECTION -->


		<!--PAGE CONTENT -->
		<div id="content">

			<div class="inner">
				<div class="row">
					<div class="col-lg-12">


						<h2>Tambah Data</h2>



					</div>
				</div>

				<hr />

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">

							<div class="panel-body col-lg-4">
								<div class="table-responsive">
									<form role="form" method="get" action="aksi_add_data.php">
										<div class="form-group ">
											<label>Nama Barang</label>
											<?php
											include 'koneksi.php';
											$sql_nama_barang = "SELECT `id_barang`, `nama_barang` FROM `latihan_ci`.`barang`";
											$tampil_nama_barang = mysqli_query ( $konek, $sql_nama_barang );
											?>
											<select name="id_barang" class="form-control ">
                                                
											<?php
											while ( $r_nama_barang = mysqli_fetch_array ( $tampil_nama_barang ) ) {
												?>
												<option value="<?php echo $r_nama_barang[0]?>"><?php echo $r_nama_barang[1]?></option>
												
												
											<?php
											}
											?></select>

										</div>

										<div class="form-group">
											<label>Nama Daerah</label>
											<?php
											$sql_nama_daerah = "SELECT `id_daerah`, `nama_daerah` FROM `latihan_ci`.`daerah`";
											$tampil_nama_daerah = mysqli_query ( $konek, $sql_nama_daerah );
											?>
											<select name="id_daerah" class="form-control ">
                                                
											<?php
											while ( $r_nama_daerah = mysqli_fetch_array ( $tampil_nama_daerah ) ) {
												?>
												<option value="<?php echo $r_nama_daerah[0]?>"><?php echo $r_nama_daerah[1]?></option>
											<?php
											}
											?></select>

										</div>

										<div class="form-group input-group">
											<input type="text" name="harga" class="form-control">
										</div>

										<input type="submit" value="Simpan"
											class="btn btn-success btn-lg btn-line"> <input type="button"
											value="Batal" class="btn btn-danger btn-lg btn-line"
											onclick="self.history.back()">
									</form>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--END PAGE CONTENT -->


	</div>

	<!--END MAIN WRAPPER -->

	<!-- FOOTER -->
	<div id="footer">
		<p>&copy; binarytheme &nbsp;2014 &nbsp;</p>
	</div>
	<!--END FOOTER -->
	<!-- GLOBAL SCRIPTS -->
	<script src="assets/plugins/jquery-2.0.3.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js"></script>
	<!-- END GLOBAL SCRIPTS -->
	<!-- PAGE LEVEL SCRIPTS -->
	<script src="assets/plugins/dataTables/jquery.dataTables.js"></script>
	<script src="assets/plugins/dataTables/dataTables.bootstrap.js"></script>
	<script>
         $(document).ready(function () {
             $('#dataTables-example').dataTable();
         });
    </script>
	<!-- END PAGE LEVEL SCRIPTS -->
</body>
<!-- END BODY -->
</html>

