import 'package:demo_login/api/API_menu.dart';
import 'package:demo_login/model/Model_Menu.dart';
import 'package:demo_login/page/Login.dart';
import 'package:demo_login/page/detailsPage.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MenuLeft extends StatelessWidget {
  const MenuLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: FutureBuilder(
          future: DataMenu(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                child: Text('No data'),
              );
            } else if (data.hasData) {
              var items = data.data as List<Model_Menu>;
              return Container(
                // color: Color.fromARGB(255, 217, 231, 229),
                child: Column(
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
                    ListView.builder(
                      // Dùng 2 dòng này để sử dụng được các widget khác
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      // Dùng 2 dòng này để sử dụng được các widget khác
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          // color: Color.fromARGB(255, 92, 180, 167),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => DetailPage()));
                                  print(items[index].name.toString());
                                },
                                leading: Image(
                                  width: 35,
                                  height: 35,
                                  image:
                                      AssetImage(items[index].icon.toString()),
                                ),
                                title: Text(
                                  items[index].name.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  //Dùng để chyển ngôn ngữ
                                ).tr(),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginForm()));
                      },
                      leading: Image(
                        image: AssetImage('assets/icon/logout.png'),
                        width: 35,
                        height: 35,
                      ),
                      title: Text(
                        'logout'.tr(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
