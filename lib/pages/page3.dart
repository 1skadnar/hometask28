import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Logic for search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Logic for menu action
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "It's a Great Day For Coffee",
              style: TextStyle(fontSize: 45),
            ),
            const SizedBox(height: 20),
            buildCoffeeItem(context, 'assets/images/espresso.png', 'Espresso', '/page4'),
            buildCoffeeItem(context, 'assets/images/cappuccino.png', 'Cappuccino', '/page5'),
            buildCoffeeItem(context, 'assets/images/macchiato.png', 'Macchiato', '/page6'),
            buildCoffeeItem(context, 'assets/images/mocha.png', 'Mocha', '/page7'),
            buildCoffeeItem(context, 'assets/images/latte.png', 'Latte', '/page8'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/page2');
              },
              child: const Text('Back', style: TextStyle(fontSize: 42)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCoffeeItem(BuildContext context, String imagePath, String coffeeName, String route) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 40,
        height: 40,
      ),
      title: Text(
        coffeeName,
        style: const TextStyle(fontSize: 30),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }
}
