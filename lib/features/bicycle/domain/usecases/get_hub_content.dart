// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/bicycle/domain/repositories/bicycle_repository.dart';

class GetHubContentUseCase {
  BicycleRepository repository;
  GetHubContentUseCase({
    required this.repository,
  });
  Future<Either<Failure, List<Bicycle>>> call(
      String category, int hubId) async {
    return await repository.getHubContent(category, hubId);
  }
}
