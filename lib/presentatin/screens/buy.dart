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
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: $price грн',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle "Confirm Purchase" buttonpress
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),
              child: Text(
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
