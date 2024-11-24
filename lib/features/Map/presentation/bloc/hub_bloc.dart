// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ride_share_app/core/global/helper/get_failures_type.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';
import 'package:ride_share_app/features/Map/domain/usecases/get_all_hubs.dart';
part 'hub_bloc.freezed.dart';
part 'hub_event.dart';
part 'hub_state.dart';

class HubBloc extends Bloc<HubEvent, HubState> {
  final GetAlHubsUseCase useCase;
  HubBloc( {required this.useCase}) : super(const HubState.loadInProgress()) {
    on<HubEvent>(
      (event, emit) async {
        await event.when(getAllHubs: (double latitude, double longitude) async {
          final result = await useCase(latitude, longitude);
          result.fold((result) => emit(HubState.error(getFailureType(result))),
              (result) {
            return result.isNotEmpty
                ? emit(HubState.loaded(result))
                : emit(const HubState.empty());
          });
        });
      },
    );
  }
}
