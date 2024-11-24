import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/reservation.dart';
import '../entities/reservation_response.dart';

abstract class ReservationRepository {
  Future<Either<Failure, ReservationResponse>> createNewReservation(
      Reservation reservation);
  Future<Either<Failure, ReservationResponse>> reservationPayment(
      String password, int reservationId);

  Future<Either<Failure, ReservationResponse>> getReservationById(
      int reservationId);

  Future<Either<Failure, List<ReservationResponse>>> getReservationsByClientId(
      int clientId);
}
