<?php
    include('../koneksi.php');

    $q1 = mysqli_query($conn, "SELECT * FROM gardu_induk");
    $row = mysqli_num_rows($q1) - 1;

    $q2 = mysqli_query($conn, "SELECT * FROM gardu_induk LIMIT $row");
    $data_gardu = array();

    while($data = mysqli_fetch_array($q2)){
        $temp = array();
        $temp['GI_ID'] = $data['GI_ID'];
        $temp['GI_NAMA'] = $data['GI_NAMA'];
        $temp['GI_ALAMAT'] = $data['GI_ALAMAT'];
        $temp['GI_KOORX'] = $data['GI_KOORX'];
        $temp['GI_KOORY'] = $data['GI_KOORY'];
        $temp['GI_TLP'] = $data['GI_TLP'];
        $temp['ID_MS'] = $data['ID_MS'];
        $temp['GI_WILAYAH'] = $data['GI_WILAYAH'];
        $temp['GI_AREA'] = $data['GI_AREA'];
        $temp['CREATED_ON'] = $data['CREATED_ON'];
        $temp['CREATED_BY'] = $data['CREATED_BY'];
        array_push($data_gardu, $temp);
    }

    header('Content-type: text/javascript');
    echo json_encode($data_gardu, JSON_PRETTY_PRINT);
?>