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
    <title> Google Maps Demo </title>
    
    </head>
  <body>
   <h3> Google Maps Demo</h3>
    <div id=map style="width:100%;height:500px"></div>
    <script>
      function initMap() {

        var uluru = {lat: 20.6, lng: 10.5};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });

      }

    </script>
    <script async defer
    src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCnYMYY8GtuxqOPL_1-KjEUQU91L-0J0-s&callback=initMap">
    </script>
  </body >
  </html>
