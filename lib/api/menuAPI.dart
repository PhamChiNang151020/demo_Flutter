import 'dart:convert';

import 'package:demo_login/model/menu.dart';
import 'package:flutter/services.dart';

Future<List<ModelMenu>> ReadDataMenu() async {
  final jsondata = await rootBundle.loadString('assets/menu/itemMenu.json');
  final list = json.decode(jsondata) as List<dynamic>;
  return list.map((e) => ModelMenu.fromJson(e)).toList();
}
