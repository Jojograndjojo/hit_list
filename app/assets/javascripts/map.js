function initMap(address) {
  var geocoder = new google.maps.Geocoder();
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === 'OK') {
      var latitude = results[0].geometry.location.lat();
      var longitude = results[0].geometry.location.lng();
      var Companylatitudelongitude = {lat: latitude, lng: longitude}
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: Companylatitudelongitude
      });
      var marker = new google.maps.Marker({
        position: Companylatitudelongitude,
        map: map,
        title: 'Hello World!'
      });
    }
  });
 map
}
