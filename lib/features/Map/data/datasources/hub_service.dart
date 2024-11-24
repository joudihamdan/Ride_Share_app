import 'package:dio/dio.dart';
import 'package:ride_share_app/core/constant/api_urls.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';
import 'package:ride_share_app/core/injection_container.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import 'package:ride_share_app/features/Map/data/models/hub_model.dart';

abstract class HubService {
  Future<List<HubModel>> getAllHub(double latitude, double longitude);
}

class HubServiceImp implements HubService {
  @override
  Future<List<HubModel>> getAllHub(double latitude, double longitude) async {
    try {
      var response = await sl<DioClient>()
          .get("${ApiUrls.hubs}?longtitude=$longitude&latitude=$latitude",
          options: Options(headers: {"Authorization": "Bearer $token"}));
      if (response.statusCode == 200) {
        List<dynamic> body = response.data['body'];
        List<HubModel> hubs = List<HubModel>.generate(
            body.length, (index) => HubModel.fromMap(body[index]));
            print(hubs);
        return hubs;
      } else {
        throw ServerException(message: response.data['message']);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
