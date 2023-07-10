import 'package:flutter/material.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your card number:'),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Card Number',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push( // Navigate back to the home page
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}