import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import './../page/HomePage.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;
  bool _validate = false;

  String _username = 'admin@gmail.com';
  String _password = 'Admin12345@';

  final FailLogin = SnackBar(
    content: Text('login_fail'.tr()),
  );

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Form(
        //Dùng cho điều kiện
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: emailController,
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'warning_email'.tr();
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email'.tr(),
                  labelStyle: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  hintText: 'enter_your_email'.tr(),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: _isObscure,
                controller: passwordController,
                validator: (pass) {
                  if (pass == null || pass.isEmpty) {
                    return 'warning_password'.tr();
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password'.tr(),
                    labelStyle: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    hintText: 'enter_your_password'.tr(),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure ? Icons.lock : Icons.lock_open),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
              ),
            ),

            // BUTTON ĐĂNG NHẬP
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => HomePage()));

                  if (_formKey.currentState!.validate()) {
                    if (emailController.text == _username &&
                        passwordController.text == _password) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                      print('Chuyển');
                    } else
                      ScaffoldMessenger.of(context).showSnackBar(FailLogin);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'login'.tr(),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.login,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'login_fb'.tr(),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.facebook),
                    ]),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
