// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:ride_share_app/core/constant/api_urls.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';
import 'package:ride_share_app/core/injection_container.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import 'package:ride_share_app/features/Authentication/data/models/auth_response.dart';
import 'package:ride_share_app/features/Authentication/data/models/login_model.dart';
import 'package:ride_share_app/features/Authentication/data/models/signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService {
  Future<AuthResponse> signup(SignupModel signup);
  Future<AuthResponse> login(LoginModel login);
  Future<void> logout();
}

class AuthServiceImp extends AuthService {
  @override
  Future<AuthResponse> signup(SignupModel signup) async {
    try {
      var response =
          await sl<DioClient>().post(ApiUrls.register, data: signup.toMap());
      if (response.statusCode == 200) {
        sl<SharedPreferences>()
            .setString('token', response.data["body"]["token"]);
        final authResponse = AuthResponse.fromMap(response.data);
        print("trueeeeeee");
        print(authResponse);
        return authResponse;
      } else {
        throw ServerException(message: response.data['message']);
      }
    } on DioException catch (e) {
      print(e.response!.data['message']);
      throw (e.response!.data['message']);
    }
  }

  @override
  Future<AuthResponse> login(LoginModel login) async {
    try {
      var response =
          await sl<DioClient>().post(ApiUrls.login, data: login.toMap());

      if (response.statusCode == 200) {
        sl<SharedPreferences>()
            .setString('token', response.data["body"]["token"]);
        final authResponse = AuthResponse.fromMap(response.data);
        print(response.data['message']);
        return authResponse;
      } else {
        print(2);
        print(response.data['message']);
        throw ServerException(message: response.data['message']);
      }
    } on DioException catch (e) {
      print(3);
      print(e.response!.data['message']);
      throw (e.response!.data['message']);
    }
  }

  @override
  Future<void> logout() async {
    
    await sl<SharedPreferences>().remove('token');
  }
}
