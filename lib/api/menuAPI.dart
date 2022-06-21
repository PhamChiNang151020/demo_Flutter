import 'dart:convert';

import 'package:demo_login/model/menuItem.dart';
import 'package:flutter/cupertino.dart';

class MenuAPI {
  static Future<List<ItemMenu>> getItemMyMenu(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/menu/menu_list.json');
    final body = json.decode(data);

    return body.map<ItemMenu>(ItemMenu.fromJson).toList();
  }
}
