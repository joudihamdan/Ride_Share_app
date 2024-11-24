import 'package:geolocator/geolocator.dart';

Future<Position> getCurrentLocation() async {
  const LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  bool serviceEnabeld = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabeld) {
    return Future.error('Location services are enabled ');
  }
  LocationPermission permission;
  permission = await Geolocator.requestPermission();
  //LocationPermission permissionn = await Geolocator.checkPermission();
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are denied!, we are cannot able to request your device location ');
  }

  return await Geolocator.getCurrentPosition(
      locationSettings: locationSettings);
}
