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
        ),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
