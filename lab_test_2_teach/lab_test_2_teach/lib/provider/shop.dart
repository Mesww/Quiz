import 'package:flutter/material.dart';
import 'package:lab_test_2_teach/provider/cart.dart';
import 'package:lab_test_2_teach/provider/shop2.dart';
import 'package:provider/provider.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Apple'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<Cart>().addToCart('Apple');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Banana'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<Cart>().addToCart('Banana');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Orange'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<Cart>().addToCart('Orange');
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
            Text('Total in cart = ${context.watch<Cart>().cart.length}'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Shop2()),
                );
              },
              child: const Text('Show cart'),
            ),
          ],
        ),
      ),
    );
  }
}
