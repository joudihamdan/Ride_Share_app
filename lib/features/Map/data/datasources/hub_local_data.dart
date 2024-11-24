import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';
import 'package:ride_share_app/core/store/getit.dart';
import 'package:ride_share_app/features/Map/data/models/hub_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HubLocalData {
  Future<Unit> cachedHubs(List<HubModel> hubs);
  Future<List<HubModel>> getCachedHubs();
}

class HubLocalDataImp implements HubLocalData {
  @override
  Future<Unit> cachedHubs(List<HubModel> hubs) {
    List hubsList =
        hubs.map<Map<String, dynamic>>((hub) => hub.toMap()).toList();
    storage
        .get<SharedPreferences>()
        .setString("cached_hubs", jsonEncode(hubsList));
    return Future.value(unit);
  }

  @override
  Future<List<HubModel>> getCachedHubs() {
    final cachedHubs =
        storage.get<SharedPreferences>().getString('cached_hubs');
    if (cachedHubs != null) {
      List hubList = jsonDecode(cachedHubs);
      List<HubModel> hubs =
          hubList.map<HubModel>((hub) => HubModel.fromJson(hub)).toList();
      return Future.value(hubs);
    } else {
      throw EmptyCacheException();
    }
  }
}
