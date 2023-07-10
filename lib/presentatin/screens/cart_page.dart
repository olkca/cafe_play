import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:cafe_pay/presentatin/screens/home.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter your card number:'),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Card Number',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push( // Navigate back to the home page
                  context,
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}