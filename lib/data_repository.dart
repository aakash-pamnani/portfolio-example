import 'dart:convert';

import 'package:flutter/material.dart';

class DataRepository {
  late Map<String, dynamic> data;

  static DataRepository? _instance;
  static DataRepository get instance {
    _instance ??= DataRepository();
    return _instance!;
  }

  Future<void> initilize(BuildContext context) async {
    final String dataString =
        await DefaultAssetBundle.of(context).loadString("assets/data.json");
    data = json.decode(dataString) as Map<String, dynamic>;
  }
}
