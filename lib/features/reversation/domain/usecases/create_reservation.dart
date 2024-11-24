// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/reservation.dart';
import '../entities/reservation_response.dart';
import '../repositories/reservation_repository.dart';

class CreateReservationUseCase {
  ReservationRepository repository;
  CreateReservationUseCase({
    required this.repository,
  });

  Future<Either<Failure, ReservationResponse>> call(Reservation reservation) async{
    return await repository.createNewReservation(reservation);
  }
}
