import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;

  const ProductScreen({Key? key, required this.imageUrl, required this.title, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details - $title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '$price грн',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double fem = 1.0; // You can replace this value with your desired multiplier

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Existing code...

          // Spacer to push the button down
          Spacer(),

          // Add to Cart button
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Enter Credit Card Number'),
                    content: TextField(
                      decoration: InputDecoration(
                        labelText: 'Credit Card Number',
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          // Perform necessary actions on OK button press
                          Navigator.of(context).pop(); // Close the dialog
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyWidget()),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              'Add to cart',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14 * fem,
                fontWeight: FontWeight.w400,
                height: 1.2125,
                color: const Color(0xffffffff),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xfff54749),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20 * fem),
              ),
            ),
          ),

          // Existing code...
        ],
      ),
    );
  }
}
