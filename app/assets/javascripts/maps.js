$(document).ready(function() {
  var is_contact = location.pathname == "/contact"; //Equals true if we're at the root
  if (is_contact) {
    styles = [{"featureType":"water","elementType":"geometry","stylers":[{"color":"#333739"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#2ecc71"}]},{"featureType":"poi","stylers":[{"color":"#2ecc71"},{"lightness":-7}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#2ecc71"},{"lightness":-28}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#2ecc71"},{"visibility":"on"},{"lightness":-15}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#2ecc71"},{"lightness":-18}]},{"elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#2ecc71"},{"lightness":-34}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"visibility":"on"},{"color":"#333739"},{"weight":0.8}]},{"featureType":"poi.park","stylers":[{"color":"#2ecc71"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#333739"},{"weight":0.3},{"lightness":10}]}];

    handler = Gmaps.build('Google');
    lat = parseFloat("39.7518877");
    lon = parseFloat("-105.0227084");
    var finkLatLng = new google.maps.LatLng(lat,lon);
    mapOptions = {
      center: finkLatLng,
      zoom: 14,
      styles: styles,
    };
    handler.buildMap({ provider: mapOptions, internal: {id: 'map'}}, function(){
      markers = handler.addMarkers([
        {
          "lat": lat,
          "lng": lon,
        }
      ]);
    });
  }
});
