// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';

import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/core/networks/internet_check.dart';
import 'package:ride_share_app/features/Map/data/datasources/hub_local_data.dart';
import 'package:ride_share_app/features/Map/data/datasources/hub_service.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';
import 'package:ride_share_app/features/Map/domain/repositories/hubs_repository.dart';

class HubRepositoryImp implements HubsRepository {
  final InternetCheck internetCheck;
  final HubService hubService;
  final HubLocalData hubLocalData;

  HubRepositoryImp({
    required this.internetCheck,
    required this.hubService,
    required this.hubLocalData,
  });

  @override
  Future<Either<Failure, List<Hub>>> getAllHub(
      double latitude, double longitude) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await hubService.getAllHub(latitude, longitude);
        hubLocalData.cachedHubs(result);
        return Right(result);
      } catch (e) {
        return Left(ServerFailure(message: 'failed to get hubs'));
      }
    } else {
      try {
        final result = await hubLocalData.getCachedHubs();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}
