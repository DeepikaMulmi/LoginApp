import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';

void main()=> runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginApp",
      home: LoginScreen(),
    );
  }
}
