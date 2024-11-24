part of 'hub_bloc.dart';

@freezed
class HubEvent with _$HubEvent {
  const factory HubEvent.getAllHubs(double latitude,double longitude )=_GetAllHubs;
}