import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import './../widget/MenuLeft.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'homepage'.tr(),
        ),
      ),
      drawer: MenuLeft(),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/images/avt2.png')),
        ],
      ),
    );
  }
}
