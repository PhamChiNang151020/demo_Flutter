// import 'package:demo_login/model/MyMenu.dart';
import 'package:demo_login/api/menuAPI.dart';
import 'package:demo_login/model/menu.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './../page/Login.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(163, 96, 228, 221),
        // child: ListView(
        //   //Xóa cái padding đi
        //   padding: EdgeInsets.zero,
        //   children: [
        //     UserAccountsDrawerHeader(
        //       accountName: Text(
        //         'Admin',
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 25,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //       accountEmail: Text(
        //         'Email: admin@gmail.com',
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 20,
        //           fontStyle: FontStyle.italic,
        //         ),
        //       ),
        //       currentAccountPicture: ClipOval(
        //         child: Image(
        //           image: AssetImage('assets/images/avt2.png'),
        //         ),
        //       ),
        //       decoration: BoxDecoration(
        //           color: Colors.blueGrey,
        //           image: DecorationImage(
        //             fit: BoxFit.none,
        //             image: AssetImage('assets/images/bg-avt.jpg'),
        //           )),
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.house,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       title: Text('dashboard'.tr()),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.calendar,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       title: Text('schedule'.tr()),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.clipboard,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       title: Text('report'.tr()),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.file,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       title: Text('documents'.tr()),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.bell,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       //Hiển thị số thông báo
        //       trailing: ClipOval(
        //         child: Container(
        //           color: Colors.red,
        //           width: 20,
        //           height: 20,
        //           child: Center(
        //             child: Text(
        //               '8',
        //               style: TextStyle(
        //                 color: Colors.white,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       title: Text('notifications'.tr()),
        //       onTap: () {},
        //     ),
        //     ListTile(
        //       leading: Icon(
        //         FontAwesomeIcons.arrowRightFromBracket,
        //         color: Colors.blueAccent[400],
        //         size: 20,
        //       ),
        //       title: Text('logout'.tr()),
        //       onTap: () {
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (_) => LoginForm()));
        //       },
        //     ),

        //   ],
        // ),
        // child: ListView.builder(itemBuilder: itemBuilder),
      ),
    );
  }
}
