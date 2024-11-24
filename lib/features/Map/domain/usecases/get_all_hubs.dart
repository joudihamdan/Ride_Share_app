// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';
import 'package:ride_share_app/features/Map/domain/repositories/hubs_repository.dart';

class GetAlHubsUseCase {
  HubsRepository hubsRepository;
  GetAlHubsUseCase({
    required this.hubsRepository,
  });
  Future<Either<Failure, List<Hub>>> call(double latitude, double longitude) async {
    return await hubsRepository.getAllHub(latitude, longitude);
  }
}
