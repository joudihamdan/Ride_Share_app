import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/injection_container.dart';
import '../models/reservation_model.dart';
import '../models/reservation_response_model.dart';

abstract class ReservationRemoteData {
  Future<ReservationResponseModel> createNewReservation(
      ReservationModel reservation);
  Future<ReservationResponseModel> reservationPayment(
      String password, int reservationId);
  Future<ReservationResponseModel> getReservationById(int reservationId);
  Future<List<ReservationResponseModel>> getReservationsByClientId(
      int clientId);
}

class ReseervationRemoteDataImp implements ReservationRemoteData {
  @override
  Future<ReservationResponseModel> createNewReservation(
      ReservationModel reservation) async {
    try {
      final response = await sl<DioClient>().post(
          "http://199.192.19.220:3012/api/v1/reservation",
          data: reservation.toJson());
      if (response.statusCode == 200) {
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException(message: '');
      }
    } on DioException catch(error) {
      debugPrint(error.message);
      throw ServerException(message:error.type.name );
    }
  }

  @override
  Future<ReservationResponseModel> getReservationById(int reservationId) async {
    try {
      final response = await sl<DioClient>().get(
        "http://199.192.19.220:3012/api/v1/reservation/by-reservation-id/$reservationId",
      );
      if (response.statusCode == 200) {
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException(message: '');
      }
    } on DioException {
      throw ServerException(message: '');
    }
  }

  @override
  Future<List<ReservationResponseModel>> getReservationsByClientId(
      int clientId) async {
    try {
      final response = await sl<DioClient>().get(
        "http://199.192.19.220:3012/api/v1/reservation/by-bicycle-id/$clientId",
      );
      if (response.statusCode == 200) {
        List<dynamic> body = response.data['body'];
        List<ReservationResponseModel> data =
            List<ReservationResponseModel>.generate(body.length,
                (index) => ReservationResponseModel.fromJson(body[index]));
        return data;
      } else {
        throw ServerException(message: '');
      }
    } on DioException {
      throw ServerException(message: '');
    }
  }

  @override
  Future<ReservationResponseModel> reservationPayment(
      String password, int reservationId) async {
    try {
      final response = await sl<DioClient>().post(
          "http://199.192.19.220:3012/api/v1/reservation/reseravation-payment",
          data: {"walletPassword": password, "reservationID": reservationId});
      if (response.statusCode == 200) {
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException(message: '');
      }
    } on DioException {
      throw ServerException(message: '');
    }
  }
}
