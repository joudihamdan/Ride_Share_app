import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/networks/internet_check.dart';
import '../../domain/entities/bicycle.dart';
import '../../domain/repositories/bicycle_repository.dart';
import '../datasources/bicycle_local_data.dart';
import '../datasources/bicycle_remote_data.dart';

class BicycleRepoImp implements BicycleRepository {
  final BicycleLocalData localData;
  final BicycleRemoteData remoteData;
  final InternetCheck internetCheck;

  BicycleRepoImp(
      {required this.localData,
      required this.remoteData,
      required this.internetCheck});

  @override
  Future<Either<Failure, List<String>>> getAllBicyclesCategory() async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getAllBicyclesCategory();
        print(" result =$result");
        localData.cacheCategoiesName(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final result = await localData.getCachedCategoriesName();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Bicycle>>> getAllBicyclesByCategoryName(
      String name) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getAllBicyclesByCategoryName(name);
        localData.cachBicyclesOfCategory(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final result = await localData.getCachedBicyclesOfCategory();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Bicycle>> getBicycleById(int id) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getBicycleById(id);
        localData.cachBicycle(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final result = await localData.getCachedBicycleById();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Bicycle>>> getHubContent(
      String category, int hubId) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getHubContent(category, hubId);
        localData.cachBicyclesOfCategory(result);
        print(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure(message: ''));
      }
    } else {
      try {
        final result = await localData.getCachedBicyclesOfCategory();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}
