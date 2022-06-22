import 'dart:convert';

import 'package:demo_login/model/Model_Menu.dart';
import 'package:flutter/services.dart';

Future<List<Model_Menu>> DataMenu() async {
  final jsondata = await rootBundle.loadString('assets/menu/itemMenu.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => Model_Menu.fromJson(e)).toList();
}
