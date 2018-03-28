<?php include('koneksi.php'); ?>
<!DOCTYPE html> 
<html lang=en>
  <head>
  <style>
 #mymap {
        height: 500px;
        width: 100%;
       }
  </style>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title> Google Maps Gardu Induk </title>
    
    </head>
  <body>
    <h3> Google Maps Gardu Hubung</h3>
    <div id=mymap></div>

      <script>

          function initMap(){
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function(){
              if(this.readyState == 4 && this.status == 200){
                var data = JSON.parse(this.responseText);
                var center = new google.maps.LatLng(-6.186352, 106.830529);
                var map = new google.maps.Map(document.getElementById('mymap'), {
                  zoom: 11,
                  center: center
                });

                var marker;
                for(i=0; i<data.length; i++){
                  var location = new google.maps.LatLng(parseFloat(data[i].GH_KOORX), parseFloat(data[i].GH_KOORY));
                  marker = new google.maps.Marker({
                    position: location,
                    map: map,
                    label: data[i].GH_NAMA
                  }); 

                  marker.addListener('click', function(){
                    map.setZoom(16);
                    map.setCenter(marker.getPosition());
                  });
                } 

                // document.getElementById('mymap').innerHTML = data.length;
              }
            };

            xmlhttp.open("GET", "http://localhost/maps/api/data_gardu_hubung.php", true);
            xmlhttp.send();
          }

      </script>

    <script async defer
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCnYMYY8GtuxqOPL_1-KjEUQU91L-0J0-s&callback=initMap">
    </script>
  </body >
  </html>
