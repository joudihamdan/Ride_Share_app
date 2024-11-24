import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/reservation_response.dart';
import '../repositories/reservation_repository.dart';

class GetReservationByClientidUseCase {
  ReservationRepository repository;
  GetReservationByClientidUseCase({
    required this.repository,
  });

  Future<Either<Failure, List<ReservationResponse>>> call(int clientId) async {
    return await repository.getReservationsByClientId(clientId);
  }
}
