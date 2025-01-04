import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:ride_share_app/features/bicycle/data/datasources/bicycle_remote_data.dart';

import '../models/bicycle_model.dart';

class BicycleMockDate extends Mock implements BicycleRemoteData {
  late List<BicycleModel> bicycles = [
    const BicycleModel(
        id: 1,
        price: 1000,
        model: "lancer",
        type: " ",
        photoPath: "assets/images/e_bike.png",
        isFavourite: false,
        size: 13,
        note: ""),
    const BicycleModel(
        id: 2,
        price: 1000,
        model: "lancer",
        type: " ",
        photoPath: "assets/images/hybrid.png",
        isFavourite: false,
        size: 13,
        note: ""),
    const BicycleModel(
        id: 3,
        price: 1000,
        model: "lancer",
        type: " ",
        photoPath: "assets/images/mountine.png",
        isFavourite: false,
        size: 13,
        note: ""),
  ];

  @override
  Future<BicycleModel> getBicycleById(int id) async {
    try {
      return bicycles.firstWhere((bicycle) => bicycle.id == id);
    } catch (e) {
      throw Exception("Bicycle with id $id not found");
    }
  }

  @override
  Future<List<BicycleModel>> getHubContent(String category, int hubId) async {
    print(bicycles);
    return bicycles;
  }
}
