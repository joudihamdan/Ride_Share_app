import 'package:shared_preferences/shared_preferences.dart';

import '../injection_container.dart';

class ApiUrls {
  static const baseUrl = 'http://199.192.19.220:3012/api/v1/';
  static const register = '${baseUrl}auth/register';
  static const login = '${baseUrl}auth/authenticate';
  static const hubs = '${baseUrl}hubs';
  static hubContent(String category, int hubId) =>
      "${baseUrl}hub-content/$hubId?bicycleCategory=$category";
  static const wallet = '${baseUrl}wallet';
  static const validCode = '${baseUrl}wallet/All-valid-codes';
  static const getCategories ="${baseUrl}bicycle/bicycles-categories";
  static const getBicycleById ="${baseUrl}bicycle/";
}

String? token = sl<SharedPreferences>().getString('token') ;