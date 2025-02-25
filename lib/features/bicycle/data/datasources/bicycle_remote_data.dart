// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'package:dio/dio.dart';
import 'package:ride_share_app/core/constant/api_urls.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/injection_container.dart';
import '../models/bicycle_model.dart';

abstract class BicycleRemoteData {
  Future<List<String>> getAllBicyclesCategory();
  Future<List<BicycleModel>> getHubContent(String category, int hubId);
  Future<BicycleModel> getBicycleById(int id);
}

class BicycleRemoteDataImpWithDio implements BicycleRemoteData {
  final Dio dio;
  Response response;
  BicycleRemoteDataImpWithDio({
    required this.dio,
    required this.response,
  });

  @override
  Future<List<String>> getAllBicyclesCategory() async {
    response = await dio.get(
      ApiUrls.getCategories,
      options: Options(
        headers: {"Authorization": "Bearer $token"},
      ),
    );
    if (response.statusCode == 200) {
      List<String> categories = List<String>.from(response.data["body"]);
      return categories;
    } else {
      print(response.data);
      throw Exception();
    }
  }

  @override
  Future<BicycleModel> getBicycleById(int id) async {
    try {
      response = await dio.get(
        "${ApiUrls.getBicycleById}$id",
      );
      if (response.statusCode == 200) {
        BicycleModel bicycleModel =
            BicycleModel.fromJson(response.data['body']);
        return bicycleModel;
      } else {
        throw ServerException(message: '');
      }
    } on DioException {
      throw ServerException(message: '');
    }
  }

  @override
  Future<List<BicycleModel>> getHubContent(String category, int hubId) async {
    try {
      final result =
          await sl<DioClient>().get(ApiUrls.hubContent(category, hubId));
      if (result.statusCode == 200) {
        List body = result.data['body']['bicycleList'];
        print(body);
        List<BicycleModel> bicycles = List<BicycleModel>.generate(
            body.length, (index) => BicycleModel.fromJson(body[index]));
        print(bicycles);
        return bicycles;
      } else {
        throw Exception(response.data['message']);
      }
    } on DioException {
      throw ServerException(message: response.data['message']);
    }
  }
}
