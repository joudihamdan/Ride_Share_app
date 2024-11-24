
import 'package:equatable/equatable.dart';

class Hub extends Equatable {
  final int id;
  final String name;
  final double latitude;
  final double longitude;
  final String description;
  const Hub({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.description,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      latitude,
      longitude,
      description,
    ];
  }
}
