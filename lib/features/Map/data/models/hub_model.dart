import 'dart:convert';

import 'package:ride_share_app/features/Map/domain/entities/hub.dart';

class HubModel extends Hub {
  const HubModel(
      {required super.id,
      required super.name,
      required super.latitude,
      required super.longitude,
      required super.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'description': description,
    };
  }

  factory HubModel.fromMap(Map<String, dynamic> map) {
    return HubModel(
      id: map['id'] as int,
      name: map['name'] as String,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      description: map['description'] as String,
    );
  }
  String toJson() => json.encode(toMap());

  factory HubModel.fromJson(String source) =>
      HubModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
