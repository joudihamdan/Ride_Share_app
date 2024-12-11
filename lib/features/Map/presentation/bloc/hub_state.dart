part of 'hub_bloc.dart';

@freezed
class HubState with _$HubState {
  const factory HubState.empty() = _Empty;
  const factory HubState.loadInProgress() = _LoadInProgress;
  const factory HubState.error(String failureType) = _Error;
  const factory HubState.loaded(List<Hub> hubs) = _Loaded;

}
