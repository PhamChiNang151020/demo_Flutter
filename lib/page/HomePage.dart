import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import '../api/menuAPI.dart';
import '../model/menu.dart';
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
      body: Column(
        children: [
          Image(image: AssetImage('assets/images/avt2.png')),
          // Container(
          //   child: FutureBuilder(
          //     future: ReadDataMenu(),
          //     builder: (context, data) {
          //       if (data.hasError) {
          //         return Center(child: Text("${data.error}"));
          //       } else if (data.hasData) {
          //         var items = data.data as List<ModelMenu>;
          //         return ListView.builder(
          //           itemCount: items == null ? 0 : items.length,
          //           itemBuilder: (context, index) {
          //             return ListTile(
          //               title: Text(items[index].name.toString()),
          //             );
          //           },
          //         );
          //       } else {
          //         return Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       }
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
