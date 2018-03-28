

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
<?php
    $conn = new mysqli('localhost', 'root', '', 'mapspace');

    $sql = mysqli_query($conn,"select * from gardu_induk");
      if(mysqli_num_rows($sql)>=0){
        $no = 1;
        while($data = mysqli_fetch_array($sql)){
          echo "<script>
          function initMap() {

            var $data[GI_NAMA] = {lat: $data[GI_KOORX], lng: $data[GI_KOORY]};
            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 4,
              center: $data[GI_NAMA] 
            });
            var marker = new google.maps.Marker({
              position: $data[GI_NAMA] ,
              map: map
            });

          }

          </script>";
        $no++;}}

    
    ?>
    <script async defer
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCnYMYY8GtuxqOPL_1-KjEUQU91L-0J0-s&callback=initMap">
    </script>
  </body >
  </html>
