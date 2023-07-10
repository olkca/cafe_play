import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  final String title;
  final int price;
  final String imageUrl;

  const Application({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "for me",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreen(imageUrl: imageUrl, price: price, title: title),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
