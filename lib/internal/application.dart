//import 'package:cafe_pay/presentatin/screens/about_us.dart';
import 'package:flutter/material.dart';
import '../presentatin/screens/home.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cafe Play",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const MainScreen(
          switchValue: false,
          textWeight: FontWeight.normal,
          imageUrl: '',
          price: 0,
          title: '',
          imageURL: '',
        ),
        //const About(switchValue: false, textWeight: FontWeight.normal),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
