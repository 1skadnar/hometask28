// page1.dart
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/page2');
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('COFFEE ISKOO '),
            SizedBox(height: 20),
            CircleAvatar(backgroundImage:AssetImage( 'assets/images/welcome.png'
            ))
          ],
        ),//
      ),
    );
  }
}
