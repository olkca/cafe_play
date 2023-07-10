// ignore_for_file: sort_child_properties_last

import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;

  const MyWidget({Key? key, required this.imageUrl, required this.title, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0;
    const double ffem = 1.0;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Existing code...

          // Spacer to push the button down
          const Spacer(),

          // Add to Cart button
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Enter Credit Card Number'),
                    content: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Credit Card Number',
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          // Perform necessary actions on OK button press
                          Navigator.of(context).pop(); // Close the dialog
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScreen(imageUrl: imageUrl, price: price, title: title,)),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text(
              'Add to cart',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: Color(0xffffffff),
              ),
            ),
            style: ElevatedButton.styleFrom(
              // ignore: deprecated_member_use
              primary: const Color(0xfff54749),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20 * fem),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
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
          // Existing code...
        ],
      ),
    );
  }
}