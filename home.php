<?php

?>

<div class="row">
     <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="">
                <div class="input-group primary">
                    <span class="input-group-addon">
                        <i class="fa fa-map-marker"></i>
                    </span>
                    <input type="text" id="filter" nama="filter" class="form-control" placeholder="Masukan Nama Gardu Induk">
                    <span class="input-group-btn">
                        <button type="button" id="btnSearh" onclick="doFilter()" name="btnSearh" class="btn btn-default">Search</button>
                    </span>
                </div>
            </div>
            <div class="clearfix"></div><br>
            <div class="gmap full-page-google-map">
                <div id="map" style="height: 600px; position: relative; overflow: hidden;"></div>
            </div>
     </div>
</div>
 <script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
 <script type="text/javascript">
    $('#filter').keypress(function (e) {
        if (e.which == 13) {
            doFilter();
            return false;
        }
    });
    function doFilter() {
        var filter = $("#filter").val();
         var dataString = {
                  "access": "ambilXYGarduIndukByName",
                  "name": filter
        }
        $.ajax({
                type: "POST",
                url: "proses/getLocService.php",
                dataType: 'json',
                data: dataString,
                cache: false,
                success: function(result){
                    if (result.status == 'Success'){
                        var locations = [];
                        for(var i in result.data){
                            var childLocation = [];
                            var loc = result.data[i];
                            childLocation.push(loc.namaVal);
                            childLocation.push(loc.xVal);
                            childLocation.push(loc.yVal);
                            locations.push(childLocation);
                        }
                         var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 11,
                            center: new google.maps.LatLng(-6.2570474, 106.8944044),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                            });

                            var infowindow = new google.maps.InfoWindow();
                                for (i = 0; i < locations.length; i++) { 
                                    marker = new google.maps.Marker({
                                        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                        map: map
                                    });

                                    google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                        return function() {
                                        infowindow.setContent(locations[i][0]+"<br/>");
                                        infowindow.open(map, marker);
                                        }
                                    })(marker, i));
                                }
                    }   
                }
        });
    }

     function initMapHome() {
        var dataString = {
                  "access": "ambilXYGarduIndukByName",
                  "name": '%%'
        }
        $.ajax({
                type: "POST",
                url: "proses/getLocService.php",
                dataType: 'json',
                data: dataString,
                cache: false,
                success: function(result){
                    if (result.status == 'Success'){
                        var locations = [];
                        for(var i in result.data){
                            var childLocation = [];
                            var loc = result.data[i];
                            childLocation.push(loc.namaVal);
                            childLocation.push(loc.xVal);
                            childLocation.push(loc.yVal);
                            locations.push(childLocation);
                        }
                         var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 11,
                            center: new google.maps.LatLng(-6.2570474, 106.8944044),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                            });

                            var infowindow = new google.maps.InfoWindow();
                                for (i = 0; i < locations.length; i++) { 
                                    marker = new google.maps.Marker({
                                        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                        map: map
                                    });

                                    google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                        return function() {
                                        infowindow.setContent(locations[i][0]+"<br/>");
                                        infowindow.open(map, marker);
                                        }
                                    })(marker, i));
                                }
                    }   
                }
        });
    }
 </script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?region=id&language=id&key=AIzaSyCnYMYY8GtuxqOPL_1-KjEUQU91L-0J0-s&callback=initMapHome">
</script>