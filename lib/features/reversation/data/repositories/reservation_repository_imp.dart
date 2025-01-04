import 'package:dartz/dartz.dart';
import 'package:ride_share_app/features/reversation/data/datasources/reservation_mock_data.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/networks/internet_check.dart';
import '../../domain/entities/reservation.dart';
import '../../domain/entities/reservation_response.dart';
import '../../domain/repositories/reservation_repository.dart';
import '../datasources/reservation_local_data.dart';
import '../datasources/reservation_remote_data.dart';
import '../models/reservation_model.dart';


class ReservationRepositoryImp implements ReservationRepository {
  final ReservationLocalData localData;
  final ReservationRemoteData remoteData;
  final InternetCheck internetCheck;
  final ReservationMockData mockData =ReservationMockData();

  ReservationRepositoryImp({
    required this.localData,
    required this.remoteData,
    required this.internetCheck,
  });

  @override
  Future<Either<Failure, ReservationResponse>> createNewReservation(Reservation reservation) async {
          final ReservationModel reservationModel =ReservationModel.fromReservation(reservation);
    if (await internetCheck.isConnected) {
      try {
        final result = await mockData.createNewReservation(reservationModel);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, ReservationResponse>> getReservationById(
      int reservationId) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getReservationById(reservationId);
        localData.cacheReservationById(reservationId, result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final cachedResult =
            await localData.getCachedReservationById(reservationId);
        return Right(cachedResult);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<ReservationResponse>>> getReservationsByClientId(
      int clientId) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getReservationsByClientId(clientId);
        localData.cacheReservationByClientId(clientId, result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final cachedResult = await localData.getCachedReservationByClientId(clientId);
        return Right(cachedResult);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, ReservationResponse>> reservationPayment(String password, int reservationId) async {
    if (await internetCheck.isConnected) {
      try {
        final result =
            await remoteData.reservationPayment(password, reservationId);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
