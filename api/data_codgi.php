<?php
	include('../koneksi.php');

	$query = mysqli_query($conn, "SELECT * FROM cod_gi");

	$data_codgi = array();

	while($data = mysqli_fetch_array($query)){
		$temp = array();
		$temp['CODGI_ID'] = $data['CODGI_ID'];
		$temp['CODGI_NAMA'] = $data['CODGI_NAMA'];
		$temp['CODGI_TEGANGAN'] = $data['CODGI_TEGANGAN'];
		$temp['CODGI_KETSTATUS'] = $data['CODGI_KETSTATUS'];
		$temp['CODGI_KAPASITAS'] = $data['CODGI_KAPASITAS'];
		$temp['CODGI_TAHUN'] = $data['CODGI_TAHUN'];
		$temp['CODGI_WILAYAH'] = $data['CODGI_WILAYAH'];
		$temp['CODGI_KOORX'] = $data['CODGI_KOORX'];
		$temp['CODGI_KOORY'] = $data['CODGI_KOORY'];
		$temp['CREATED_ON'] = $data['CREATED_ON'];
		$temp['CREATED_BY'] = $data['CREATED_BY'];
		$temp['CODGI_DESKRIPSI'] = $data['CODGI_DESKRIPSI'];
		$temp['CODGI_LOKASI'] = $data['CODGI_LOKASI'];
		$temp['CODGI_TUJUAN'] = $data['CODGI_TUJUAN'];
		$temp['CODGI_SUMBERDANA'] = $data['CODGI_SUMBERDANA'];
		array_push($data_codgi, $temp);
	}

	header('Content-type: text/javascript');
    echo json_encode($data_codgi, JSON_PRETTY_PRINT);
?>