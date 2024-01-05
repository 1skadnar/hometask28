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
              'assets/images/bcg.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/images/img_1.png'),),
                const SizedBox(height: 150,),
                const Center(
                  child: Text('Get the best coffee  in town',
                  style: TextStyle(fontSize: 40,),),
                ),
                const SizedBox(height: 00),
                Row(
                  children: [
                    const SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/page3',);
                      },
                      child: const Text('Log in', style: TextStyle(fontSize: 35)),
                    ),
                    const SizedBox(width: 25,height: 25,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/page3');
                      },
                      child: const Text('Register', style: TextStyle(fontSize: 35)),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/page3');
                  },
                  child: const Text('Continue with Facebook', style: TextStyle(fontSize: 35)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


