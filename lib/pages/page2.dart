// page2.dart
import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/color.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page3',);
                  },
                  child: const Text('Log in', style: TextStyle(fontSize: 25)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page3');
                  },
                  child: const Text('Register', style: TextStyle(fontSize: 25)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page3');
                  },
                  child: const Text('Continue with Facebook', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


