import 'package:flutter/material.dart';
import 'pages/contact_info.dart';
import 'pages/login_page.dart';
import 'pages/add_new_person_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/login', routes: {
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/createContact': (context) => CreateContact(),
    });
  }
}
