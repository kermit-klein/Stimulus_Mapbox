import { Controller } from "stimulus";
import mapboxgl from "mapbox-gl";

export default class extends Controller {
  connect() {
    this.map = null;
    this.initMapBox();
  }

  initMapBox() {
    const mapElement = document.getElementById("map");
    const markers = JSON.parse(mapElement.dataset.markers);

    if (mapElement) {
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      this.map = new mapboxgl.Map({
        container: "map",
        style: "mapbox://styles/mapbox/streets-v10",
        zoom: 5,
        center: ["12.4964", "41.9028"],
      });
      markers.forEach((marker) => {
        this.addMarker(marker);
      });
    }
  }

  addMarker(marker) {
    new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
  }
}
