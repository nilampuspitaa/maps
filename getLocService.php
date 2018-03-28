<?php 

	if($access == "ambilXYGarduIndukByName"){
    ambilXYGarduIndukByName($_POST["name"]); 
	}

	function ambilXYGarduIndukByName($name){
    include 'koneksi.php';
    $qrGINew = mysqli_query($conn, "select GARDU_INDUK.GI_KOORX as GI_KOORX, GARDU_INDUK.GI_KOORY as GI_KOORY,GARDU_INDUK.GI_NAMA as GI_NAMA FROM GARDU_INDUK INNER JOIN MASTER_STATUS ON GARDU_INDUK.ID_MS=MASTER_STATUS.ID_MS LEFT JOIN GI_IB ON GARDU_INDUK.GI_ID=GI_IB.GI_ID WHERE GARDU_INDUK.GI_NAMA LIKE '%$name%'");
    $associativeArray = array();
    while ($row=mysqli_fetch_array($qrGINew))
    {
        $tempArray = array();
        $tempArray ['xVal'] = $row['GI_KOORX'];
        $tempArray ['yVal'] = $row['GI_KOORY'];
        $tempArray ['namaVal'] = $row['GI_NAMA'];
         array_push($associativeArray, $tempArray);
    }

    if (count($associativeArray) > 0){
        echo json_encode(array("status"=>"Success","data"=>$associativeArray));
    }else{
        echo json_encode(array("status"=>"undefined"));
    }
    
}

 ?>