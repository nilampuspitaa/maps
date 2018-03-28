<?php
	include('../koneksi.php');

	$query = mysqli_query($conn, "SELECT * FROM transmisi150");

	$data_transmisi = array();

	while($data = mysqli_fetch_array($query)){
		$temp = array();
		$temp['TR_ID'] = $data['TR_ID'];
		$temp['TR_NAMA_BAY'] = $data['TR_NAMA_BAY'];
		$temp['TR_NO_TOWER'] = $data['TR_NO_TOWER'];
		$temp['TR_TYPE_TOWER'] = $data['TR_TYPE_TOWER'];
		$temp['TR_TEGANGAN'] = $data['TR_TEGANGAN'];
		$temp['TR_REGION'] = $data['TR_REGION'];
		$temp['TR_STATUS_MILIK'] = $data['TR_STATUS_MILIK'];
		$temp['TR_KOTA_KAB'] = $data['TR_KOTA_KAB'];
		$temp['TR_KECAMATAN'] = $data['TR_KECAMATAN'];
		$temp['TR_KELURAHAN'] = $data['TR_KELURAHAN'];
		$temp['TR_KOORX'] = $data['TR_KOORX'];
		$temp['TR_KOORY'] = $data['TR_KOORY'];
		$temp['TR_UNIT'] = $data['TR_UNIT'];
		$temp['TR_TRAGI'] = $data['TR_TRAGI'];
		$temp['CREATED_ON'] = $data['CREATED_ON'];
		$temp['CREATED_BY'] = $data['CREATED_BY'];
		array_push($data_transmisi, $temp);
	}

	header('Content-type: text/javascript');
    echo json_encode($data_transmisi, JSON_PRETTY_PRINT);
?>