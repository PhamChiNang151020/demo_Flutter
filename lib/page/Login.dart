import 'package:flutter/material.dart';
import 'package:easy_localization/src/public_ext.dart';

import '../widget/FormLogin.dart';

//Tạo classs Language để định nghĩa
class Language {
  Locale locale;
  String langName;
  Language({
    required this.locale,
    required this.langName,
  });
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
//List language
  List<Language> languageList = [
    Language(locale: const Locale('en'), langName: 'English - UK'),
    Language(locale: const Locale('vi'), langName: 'VietNam - VN'),
  ];
// Chọn ngôn ngữ cuối cùng khi chọn trong menu dropdown ngôn ngữ
  Language? selectedLang;
  @override
  Widget build(BuildContext context) {
    selectedLang = languageList.singleWhere((e) => e.locale == context.locale);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Chứa tiêu đề
          Container(
            color: Colors.blueGrey[600],
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 150, 20, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'title'.tr(),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    'txt_form'.tr(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Chang language
          Container(
            alignment: Alignment.topRight,
            color: Colors.blueGrey[600],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: DropdownButton<Language>(
                items: languageList
                    .map<DropdownMenuItem<Language>>((Language value) {
                  return DropdownMenuItem<Language>(
                    value: value,
                    child: Text(
                      value.langName,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                value: selectedLang,
                onChanged: (newValue) {
                  setState(() {
                    selectedLang = newValue!;
                  });
                  if (newValue!.langName == 'English - UK') {
                    context.setLocale(const Locale('en'));
                  } else if (newValue.langName == 'VietNam - VN') {
                    context.setLocale(const Locale('vi'));
                  }
                },
              ),
            ),
          ),

          // Chứa form
          FormLogin(),
        ],
      ),
    ));
  }
}
