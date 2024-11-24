import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class CustomTilelayer extends StatelessWidget {
  const CustomTilelayer({super.key});

  @override
  Widget build(BuildContext context) {
    return TileLayer(
      urlTemplate: "https://{s}.tile.openstreetmap.de/{z}/{x}/{y}.png",
    );
  }
}
