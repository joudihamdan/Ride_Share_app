import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_share_app/core/global/helper/get_location.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/widgets/loading_widget.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/features/Map/presentation/bloc/hub_bloc.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/custom_tilelayer.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/location_marker.dart';
import '../widgets/second_layer_of_map.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final MapController _mapController = MapController();
  LatLng currentLatLng = const LatLng(33.5, 36.35);
  List<Marker> marker = [];

  @override
  void initState() {
    showCurrentLocation();
    super.initState();
  }

  void showCurrentLocation() async {
    Position position = await getCurrentLocation();
    setState(() {
      currentLatLng = LatLng(position.latitude, position.longitude);
      _mapController.move(currentLatLng, 15);
      marker.add(
          getLocationMarker(LatLng(position.latitude, position.longitude)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<HubBloc>()
          ..add(
            HubEvent.getAllHubs(
                currentLatLng.latitude, currentLatLng.longitude),
          ),
        child: Stack(
          children: [
            FlutterMap(
              mapController: _mapController,
              options: getMapOption(),
              children: [
                const CustomTilelayer(),
                BlocConsumer<HubBloc, HubState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      error: (failure) {
                        showSnackBar(context, failure, Colors.red);
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loadInProgress: () => const LoadingWidget(),
                      loaded: (hubs) {
                        return MarkerLayer(
                          markers: getHubMarker(hubs, () {}),
                        );
                      },
                      orElse: () {
                        return const SizedBox();
                      },
                    );
                  },
                ),
                MarkerLayer(markers: marker)
              ],
            ),
            BlocBuilder<HubBloc, HubState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (hubs) {
                    return SecondLayerOfMap(
                      hubList: hubs,
                    );
                  },
                  orElse: () {
                    return const LoadingWidget();
                  },
                );
              },
            )
          ],
        ),
      ),
      
    );
  }
}
