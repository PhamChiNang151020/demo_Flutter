import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import './../widget/NavBar.dart';

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
      drawer: MyNavBar(),
      body: Image(image: AssetImage('assets/images/avt2.png')),
    );
  }
}
