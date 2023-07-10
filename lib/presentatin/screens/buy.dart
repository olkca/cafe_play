import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  final String title;
  final int price;

  const BuyScreen({Key? key, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy - $title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Product: $title',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Price: $price грн',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle "Confirm Purchase" buttonpress
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Text(
                'Confirm Purchase',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
