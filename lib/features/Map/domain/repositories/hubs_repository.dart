import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';

abstract class HubsRepository {

  Future<Either<Failure,List<Hub>>> getAllHub (double latitude,double longitude);
}