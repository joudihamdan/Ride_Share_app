import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';

Marker getLocationMarker(LatLng currentLatLng) {
  return Marker(
    point: currentLatLng,
    width: 150,
    height: 150,
    child: Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
            AssetsManager.place,
          )),
          borderRadius: BorderRadius.circular(360)),
      child: const Center(
        child: Icon(Icons.location_on),
      ),
    ),
  );
}

MapOptions getMapOption() {
  return const MapOptions(
    initialCenter: LatLng(33.5, 36.35),
    initialZoom: 13.0,
  );
}

List<Marker> getHubMarker(List<Hub> hubs, Function()? onPressed) {
  return hubs.map((hub) {
    return Marker(
      point: LatLng(hub.latitude, hub.longitude),
      width: 80,
      height: 80,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.pedal_bike_outlined,
          color: ColorManager.darkGreen,
          size: 30,
        ),
      ),
    );
  }).toList();
}
