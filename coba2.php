<?php


$conn = new mysqli('localhost', 'root', '', 'mapspace');


function get_data() {
	$conn = new mysqli('localhost', 'root', '', 'mapspace');
        $sql = "SELECT * FROM  markers ";
        $data=mysqli_query($conn, $sql);
        while($rows=mysqli_fetch_array($data))
        {
            $output[]=$rows;
        }
        return $output;
	}

?>


<!DOCTYPE html> 
<html lang=en>
  <head>
  <style>
 #map {
        height: 400px;
        width: 100%;
       }
  </style>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title> Google Maps Gardu Induk </title>
    
    </head>
  <body>
   <h3> Google Maps Gardu Induk</h3>
    <div id=map style="width:100%;height:500px"></div>

	<script>

						<?php $nilai= get_data();
					// for($kolom=6; $kolom<30; $kolom++)
					// {
					// 	echo str_replace(",",".",$nilai[0][$kolom]);
     //                    // $kolom=$kolom+1;
					// 	echo ",";	
					// }

					echo str_replace(",",".",$nilai[0][2]);
					echo ",";	
				
					// $nilai[0][4];
					// $nilai[0][5];


					?> 

      function initMap() {

        var uluru = {lat: 20.6, lng: 10.5};
        var coba = {lat: 10.6, lng: 10.5};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru, coba
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });

        var marker = new google.maps.Marker({
          position: coba,
          map: map
        });

      }

    </script>

    
    <script async defer
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCnYMYY8GtuxqOPL_1-KjEUQU91L-0J0-s&callback=initMap">
    </script>
  </body >
  </html>
