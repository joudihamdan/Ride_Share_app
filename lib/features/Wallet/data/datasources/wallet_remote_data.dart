// ignore_for_file: avoid_print

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:ride_share_app/core/constant/api_urls.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import 'package:ride_share_app/features/Wallet/data/models/valid_code_model.dart';
import '../../../../core/injection_container.dart';
import '../models/wallet_model.dart';

abstract class WalletRemoteData {
  Future<WalletModel> createWallet(
      String securityCode, String confirmSecurityCode, String bankAccount);
  Future<WalletModel> getMyWallet();
  Future<double> addMoney(String code);
  Future<List<ValidCodeModel>> getValidCode();
}

class WalletRemoteDataImp implements WalletRemoteData {
  @override
  Future<double> addMoney(String code) async {
    try {
      print("1");
      print(code);
      var result = await sl<DioClient>().put(
        ApiUrls.wallet,
        data: {
          "code": code,
        },
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );
      print(result.data);
      if (result.statusCode == 200) {
        return result.data['body']['balance'];
      } else {
        log(result.data['message']);

        throw ServerException(message: result.data['message']);
      }
    } on DioException catch (e) {
      log(e.response!.data['message']);
      throw Exception(e.response!.data['message']);
    }
  }

  @override
  Future<WalletModel> createWallet(String securityCode,
      String confirmSecurityCode, String bankAccount) async {
    try {
      
      var result = await sl<DioClient>().post(ApiUrls.wallet, data: {
        "securityCode": securityCode,
        "confirmSecurityCode": confirmSecurityCode,
        "bankAccount": bankAccount,
      },
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ),
      );

      
      if (result.statusCode == 200) {
        return WalletModel.fromJson(result.data['body']);
      } else {
    
        throw Exception(result.data['message']);
      }
    } on DioException catch (e) {

      throw Exception(e.response?.data['message'] ?? "An error occurred");
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<WalletModel> getMyWallet() async {
    try {
      var response = await sl<DioClient>().get(ApiUrls.wallet);
      if (response.statusCode == 200) {
        return WalletModel.fromMap(response.data['body']);
      } else {
        throw ServerException(message: response.data['message']);
      }
    } on DioException catch (e) {
      print(e.response!.data['message']);
      print("remote");
      throw Exception(e.response!.data['message']);
    }
  }

  @override
  Future<List<ValidCodeModel>> getValidCode() async {
    try {
      var response = await sl<DioClient>().get(ApiUrls.validCode);
      if (response.statusCode == 200) {
        List codes = response.data['body'];
        List<ValidCodeModel> codesList = List<ValidCodeModel>.generate(
            codes.length, (index) => ValidCodeModel.fromMap(codes[index]));
        return codesList;
      } else {
        throw ServerException(message: response.data['message']);
      }
    } on DioException catch (e) {
      print(e.response!.data['message']);
      throw ServerException(message: e.response!.data['message']);
    }
  }
}
