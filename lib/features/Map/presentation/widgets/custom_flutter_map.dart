import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CustomFlutterMap extends StatelessWidget {
  CustomFlutterMap({super.key});
  final MapController _mapController = MapController();
  final Widget widgets = SizedBox();
  final List<Marker> markers = [];
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        mapController: _mapController,
        options: const MapOptions(
          initialCenter: LatLng(33.5, 36.35),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(markers: markers)
        ]);
  }
}
