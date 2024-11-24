import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/bicycle/domain/repositories/bicycle_repository.dart';

class GetBicyclesByCategoryNameUseCase {
  final BicycleRepository repository;

  GetBicyclesByCategoryNameUseCase({required this.repository});

  Future<Either<Failure, List<Bicycle>>> call(String name) async {
    return await repository.getAllBicyclesByCategoryName(name);
  }
}
