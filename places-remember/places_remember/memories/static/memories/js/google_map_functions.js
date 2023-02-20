let map;

function initMap() {
    map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: 10.762622, lng: 106.660172 },
        zoom: 13,
        mapTypeId: "roadmap",
    });

    const input = document.getElementById("id_address");
    let markers = [];
    const geocoder = new google.maps.Geocoder();

    google.maps.event.addListener(map, 'click', function (event) {
        markers.forEach((marker) => {
            marker.setMap(null);
        });
        markers = [];

        markers.push(new google.maps.Marker({
            position: event.latLng,
            map: map
        }));

        geocoder.geocode({
            'latLng': event.latLng
        }, function (results, status) {
            (status === google.maps.GeocoderStatus.OK && results[0]) ? 
                input.value = results[0].formatted_address : null;
        });
    });
}

window.initMap = initMap;