// import 'package:demo_login/model/MyMenu.dart';
import 'package:demo_login/model/menuItem.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../api/menuAPI.dart';
import './../page/Login.dart';
import './../model/menuItem.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(163, 96, 228, 221),
        child: ListView(
          //Xóa cái padding đi
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Admin',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              accountEmail: Text(
                'Email: admin@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              currentAccountPicture: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/avt2.png'),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    fit: BoxFit.none,
                    image: AssetImage('assets/images/bg-avt.jpg'),
                  )),
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.house,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              title: Text('dashboard'.tr()),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.calendar,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              title: Text('schedule'.tr()),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.clipboard,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              title: Text('report'.tr()),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.file,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              title: Text('documents'.tr()),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.bell,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              //Hiển thị số thông báo
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              title: Text('notifications'.tr()),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.arrowRightFromBracket,
                color: Colors.blueAccent[400],
                size: 20,
              ),
              title: Text('logout'.tr()),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginForm()));
              },
            ),

            // FutureBuilder<List<MyMenu>>(
            //   future: MenuAPI.getItemMyMenu(context),
            //   builder: (context, snapshot) {
            //     final itemMenu = snapshot.data;
            //     switch (snapshot.connectionState) {
            //       case ConnectionState.waiting:
            //         return Center(child: CircularProgressIndicator());
            //       default:
            //         if (snapshot.hasError) {
            //           return Center(child: Text('Some error occurred!'));
            //         } else {
            //           return buildItem(itemMenu);
            //         }
            //     }
            //   },
            // )

            // FutureBuilder<List<ItemMenu>>(
            //   future: MenuAPI.getItemMyMenu(context),
            //   builder: (context, snapshot) {
            //     final items = snapshot.data;
            //     switch (snapshot.connectionState) {
            //       case ConnectionState.waiting:
            //         return Center(child: CircularProgressIndicator());
            //       default:
            //         if (snapshot.hasError) {
            //           return Center(
            //             child: Text('Error'),
            //           );
            //         } else {
            //           return buildItemMenu(items);
            //         }
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

// Widget buildItemMenu(List<ItemMenu> items) => ListView.builder(
//       physics: BouncingScrollPhysics(),
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         final item = items[index];
//         return ListTile(
//           title: Text(item.name),
//         );
//       },
//     );
