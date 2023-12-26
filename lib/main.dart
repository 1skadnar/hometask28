
import 'package:flutter/material.dart';
import 'package:hometask28/pages/page1.dart';
import 'package:hometask28/pages/page2.dart';
import 'package:hometask28/pages/page3.dart';
import 'package:hometask28/pages/page4.dart';
import 'package:hometask28/pages/page5.dart';
import 'package:hometask28/pages/page6.dart';
import 'package:hometask28/pages/page7.dart';
import 'package:hometask28/pages/page8.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/page1',
      routes: {
        '/page1': (context) => const Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => const Page3(),
        '/page4': (context) => const Page4(),
        '/page5': (context) => const Page5(),
        '/page6': (context) => const Page6(),
        '/page7': (context) => const Page7(),
        '/page8': (context) => const Page8(),
      },
    );
  }
}
