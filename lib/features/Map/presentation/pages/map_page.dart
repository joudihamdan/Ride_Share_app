import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_share_app/core/global/helper/get_location.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/global/widgets/loading_widget.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Map/domain/entities/hub.dart';
import 'package:ride_share_app/features/Map/presentation/bloc/hub_bloc.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/custom_tilelayer.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/location_mark.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/rental_location_icons.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/setting_notification_widget.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/transport_delivery.dart';
import 'package:ride_share_app/features/bicycle/presentation/pages/category_page.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final MapController _mapController = MapController();
  LatLng currentLatLng = const LatLng(33.5, 36.35);
  List<Marker> marker = [];
  bool selectText = true;
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  List<Hub> hubList = [];
  int fromId = 0;
  int toId = 0;

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
          ..add(HubEvent.getAllHubs(
              currentLatLng.latitude, currentLatLng.longitude)),
        child: Stack(
          children: [
            FlutterMap(
              mapController: _mapController,
              options: getMapOption(),
              children: [
                const CustomTilelayer(),
                BlocConsumer<HubBloc, HubState>(listener: (context, state) {
                  state.maybeWhen(
                      error: (failure) {
                        showSnackBar(context, failure, Colors.red);
                      },
                      orElse: () {});
                }, builder: (context, state) {
                  return state.maybeWhen(
                      loadInProgress: () => const LoadingWidget(),
                      loaded: (hubs) {
                        hubList = hubs;
                        return MarkerLayer(
                          markers: getHubMarker(hubs, () {}),
                        );
                      },
                      orElse: () {
                        return const SizedBox();
                      });
                }),
                MarkerLayer(markers: marker)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 140),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SettingNotificationWidget(),
                  Column(
                    children: [
                      RentalLocationIcons(
                        rentalOnPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setBottomSheetState) {
                                  return Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 350,
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color: ColorManager.lightgrey,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(Icons.close),
                                            )
                                          ],
                                        ),
                                        Center(
                                          child: Text('Select address',
                                              style: StyleManager.successText),
                                        ),
                                        const Divider(),
                                        Builder(builder: (context) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: (fromController
                                                        .text.isNotEmpty &&
                                                    toController
                                                        .text.isNotEmpty)
                                                ? Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            color: ColorManager
                                                                .redColor,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                fromController
                                                                    .text,
                                                              ),
                                                              Text(
                                                                hubList
                                                                    .firstWhere(
                                                                        (hub) =>
                                                                            hub.id ==
                                                                            fromId)
                                                                    .description,
                                                                style: StyleManager
                                                                    .underOfferText,
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              '|',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: ColorManager
                                                                      .lightgrey),
                                                            ),
                                                            Text(
                                                              '|',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: ColorManager
                                                                      .lightgrey),
                                                            ),
                                                            Text(
                                                              '|',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: ColorManager
                                                                      .lightgrey),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            color: ColorManager
                                                                .darkGreen,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                toController
                                                                    .text,
                                                              ),
                                                              Text(
                                                                hubList
                                                                    .firstWhere(
                                                                        (hub) =>
                                                                            hub.id ==
                                                                            toId)
                                                                    .description,
                                                                style: StyleManager
                                                                    .underOfferText,
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      const sizedBox20(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: ButtonWithFill(
                                                          buttonName:
                                                              'continue Reservation',
                                                          onPressed: () {
                                                            NavigationHelper
                                                                .navigateTo(
                                                                    context,
                                                                    CategoriesScreen(
                                                                      hubId:
                                                                          fromId,
                                                                    ));
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                : Column(
                                                    children: [
                                                      DropdownMenu(
                                                        leadingIcon: const Icon(
                                                            Icons
                                                                .location_searching),
                                                        label:
                                                            const Text("From"),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        enableFilter: true,
                                                        dropdownMenuEntries:
                                                            hubList.map<
                                                                DropdownMenuEntry<
                                                                    int>>((hub) {
                                                          return DropdownMenuEntry(
                                                            value: hub.id,
                                                            label: hub.name,
                                                          );
                                                        }).toList(),
                                                        onSelected: (id) {
                                                          setBottomSheetState(
                                                              () {
                                                            fromId = id!;

                                                            fromController
                                                                    .text =
                                                                hubList
                                                                    .firstWhere(
                                                                        (hub) =>
                                                                            hub.id ==
                                                                            id)
                                                                    .name;
                                                          });
                                                        },
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      DropdownMenu(
                                                        leadingIcon: const Icon(
                                                            Icons
                                                                .location_on_outlined),
                                                        label: const Text("To"),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                    context)
                                                                .width,
                                                        enableFilter: true,
                                                        dropdownMenuEntries:
                                                            hubList.map<
                                                                DropdownMenuEntry<
                                                                    int>>((hub) {
                                                          return DropdownMenuEntry(
                                                            value: hub.id,
                                                            label: hub.name,
                                                          );
                                                        }).toList(),
                                                        onSelected: (id) {
                                                          setBottomSheetState(
                                                              () {
                                                            toId = id!;
                                                            toController.text =
                                                                hubList
                                                                    .firstWhere(
                                                                        (hub) =>
                                                                            hub.id ==
                                                                            id)
                                                                    .name;
                                                          });
                                                        },
                                                      ),
                                                      const Divider(),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                              "Recent Places"),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                'see All',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .blue),
                                                              ))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                          );
                                        }),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ).whenComplete(() {
                            fromController.clear();
                            toController.clear();
                          });
                        },
                        locationOnPressed: () {
                          getCurrentLocation();
                          showSnackBar(context, 'Your location has updated',
                              ColorManager.darkGreen);
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 141,
                        width: 364,
                        decoration: BoxDecoration(
                            color: ColorManager.green100.withOpacity(0.6),
                            border: Border.all(color: ColorManager.lightGreen),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 54,
                                child: TextField(
                                  //controller: search,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: ColorManager.green100,
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Where would you go?',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              TransportDelivery(
                                selectText: selectText,
                                transportOnPressed: () {
                                  setState(() {
                                    selectText = true;
                                  });
                                },
                                deliveryOnPressed: () {
                                  setState(() {
                                    selectText = false;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
