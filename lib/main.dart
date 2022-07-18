import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:user_app_ui/pages/home_page.dart';
import 'package:user_app_ui/pages/welcom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => WelcomPage()),
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}
