import 'package:flutter/material.dart';
import 'package:helloworld/AppRoutes.dart';
import 'package:helloworld/pages/HomePage.dart';
import 'package:helloworld/pages/IntroPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlavorFind',
        home: IntroPage(),
        routes: {'/home': (context) => HomePage()});
  }
}
