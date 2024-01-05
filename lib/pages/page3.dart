import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading:IconButton(
          icon: const Icon(Icons.menu , size: 47,),
          onPressed: () {
            // Logic for menu action
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, size: 47,),
            onPressed: () {
              // Logic for search action
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
            const SizedBox(height: 150),

            const Row(
              children: [
                Image(
                  image: AssetImage('assets/images/espresso.png'),
                  width: 80,
                  height: 80,
                ),
                Text('Espresso'),
                //IconButton(icon: Icon(Icons.cabin), onPressed: () {Navigator.push(context, Page4)  },),
              ],
            ),
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
