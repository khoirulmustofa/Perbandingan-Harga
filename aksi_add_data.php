<?php
// koneksi ke database
include 'koneksi.php';
// ambil variabel yang dikirim dari form
$id_barang = $_GET ['id_barang'];
$id_daerah = $_GET ['id_daerah'];
$harga = $_GET ['harga'];

// ambil variabel yang dikirim dari form
$input = "INSERT INTO `latihan_ci`.`harga`(`id_barang`,`id_daerah`,`harga`) VALUES ('$id_barang','$id_daerah','$harga')";

//echo var_dump($input);
$hasil = mysqli_query ( $konek, $input );
// apabila query untuk menginput data benar
if ($hasil) {
	// lakukan redirect
	header ( "location:index.php" );
} else {
	echo "Input Data Tamu Gagal";
	echo "<br>";
	echo "<a href=\"add_data.php\" class=\"btn btn-warning btn-lg btn-line\">Balik Ke Form</a>";
}