<?php
	include('../koneksi.php');

	$query = mysqli_query($conn, "SELECT * FROM gardu_hubung");

	$data_gh = array();

	while($data = mysqli_fetch_array($query)){
		$temp = array();
		$temp['GH_ID'] = $data['GH_ID'];
		$temp['GH_KODE_ASET'] = $data['GH_KODE_ASET'];
		$temp['GH_NAMA'] = $data['GH_NAMA'];
		$temp['GH_ALAMAT'] = $data['GH_ALAMAT'];
		$temp['GH_OPERATOR'] = $data['GH_OPERATOR'];
		$temp['GH_STATUS_RC'] = $data['GH_STATUS_RC'];
		$temp['GH_KOORX'] = $data['GH_KOORX'];
		$temp['GH_KOORY'] = $data['GH_KOORY'];
		$temp['GH_AREA'] = $data['GH_AREA'];
		$temp['CREATED_ON'] = $data['CREATED_ON'];
		$temp['CREATED_BY'] = $data['CREATED_BY'];
		array_push($data_gh, $temp);
	}

	header('Content-type: text/javascript');
    echo json_encode($data_gh, JSON_PRETTY_PRINT);
?>