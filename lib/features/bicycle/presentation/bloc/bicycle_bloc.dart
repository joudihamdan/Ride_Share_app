import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_all_categories.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_bicycle_by_id.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_bicycles_by_category_name.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_hub_content.dart';

part 'bicycle_event.dart';
part 'bicycle_state.dart';
part 'bicycle_bloc.freezed.dart';

class BicycleBloc extends Bloc<BicycleEvent, BicycleState> {
  final GetAllCategoriesUseCase categoriesUseCase;
  final GetBicyclesByCategoryNameUseCase bicyclesUseCase;
  final GetBicycleByIdUseCase bicycleUseCase;
  final GetHubContentUseCase hubContentUseCase;

  BicycleBloc(this.categoriesUseCase, this.bicyclesUseCase, this.bicycleUseCase,
      this.hubContentUseCase)
      : super(const BicycleState.loaing()) {
    on<BicycleEvent>((event, emit) async {
      await event.when(getCategories: () async {
        emit(const BicycleState.loaing());
        final categories = await categoriesUseCase();
        print(categories);
        categories.fold(
          (categories) => emit(
            const BicycleState.error("error"),
          ),
          (categories) => emit(BicycleState.categoriesLoaded(categories)),
        );
      }, getBicyclesOfCategory: (category) async {
        emit(const BicycleState.loaing());
        final bicycles = await bicyclesUseCase(category);
        bicycles.fold(
          (bicycles) => emit(
            const BicycleState.error("error state"),
          ),
          (bicycles) => emit(
            BicycleState.bicyclesLoaded(bicycles),
          ),
        );
      }, getBicycle: (bicycleId) async {
        emit(const BicycleState.loaing());
        final bicycle = await bicycleUseCase(bicycleId);
        bicycle.fold(
          (bicycle) => emit(
            const BicycleState.error("error state"),
          ),
          (bicycle) => emit(
            BicycleState.bicycleLoaded(bicycle),
          ),
        );
      }, getHubContent: (String category, int hubId) async {
        emit(const BicycleState.loaing());
        final bicycles = await hubContentUseCase(category, hubId);
        bicycles.fold(
          (bicycles) => emit(
            const BicycleState.error("error state"),
          ),
          (bicycles) => emit(
            BicycleState.bicyclesLoaded(bicycles),
          ),
        );
      });
    });
  }
}
