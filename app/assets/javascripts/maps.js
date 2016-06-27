$(document).ready(function() {
  var is_contact = location.pathname == "/contact"; //Equals true if we're at the root
  if (is_contact) {
    styles = [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"color":"#000000"},{"lightness":13}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#144b53"},{"lightness":14},{"weight":1.4}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#08304b"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#0c4152"},{"lightness":5}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#0b434f"},{"lightness":25}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#0b3d51"},{"lightness":16}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"}]},{"featureType":"transit","elementType":"all","stylers":[{"color":"#146474"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#021019"}]}]

    handler = Gmaps.build('Google');
    lat = parseFloat("39.733464");
    lon = parseFloat("-104.992615");
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
