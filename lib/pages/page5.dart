// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}
class _Page4State extends State<Page5> {
  int quantity = 1;
  int size = 0;
  int sugarLevel = 0;
  void updateQuantity(int value) {
    if (quantity + value > 0) {
      setState(() {
        quantity += value;
      });
    }
  }
  void updateSize(int value) {
    setState(() {
      size = value;
    });
  }
  void updateSugarLevel(int value) {
    setState(() {
      sugarLevel = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cappuccino',style: TextStyle(fontSize: 30),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/cappuccino.png'),
            Text(
              'Coffe Narxi: \$${calculatePrice()}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => updateQuantity(1),
                  child: const Icon(Icons.add),
                ),
                Text(
                  'Miqdori : $quantity',
                  style: const TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () => updateQuantity(-1),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Hajmini tanlang', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                ToggleButtons(
                  isSelected: [size == 0, size == 1, size == 2],
                  onPressed: (int index) {
                    if (size != index) {
                      updateSize(index);
                    }
                  },
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Kichkina'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ortancha'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Katta'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Shakar miqdorini tanlang', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 10),
                ToggleButtons(
                  isSelected: [
                    sugarLevel == 0,
                    sugarLevel == 1,
                    sugarLevel == 2,
                    sugarLevel == 3,
                  ],
                  onPressed: (int index) {
                    if (sugarLevel != index) {
                      updateSugarLevel(index);
                    }
                  },
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Shakarsiz'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ozgina shakar'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("O'rtacha shakar"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Ko'p shakar"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Cart', style: TextStyle(fontSize: 30)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/page3');
              },
              child: const Text('Back', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
  double calculatePrice() {
    double basePrice = 3.0;
    if (size == 1) {
      basePrice *= 1.5;
    } else if (size == 2) {
      basePrice *= 2.0;
    }
    basePrice += sugarLevel * 0.5;
    return basePrice * quantity;
  }
}
