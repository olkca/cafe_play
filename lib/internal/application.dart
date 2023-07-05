import 'package:flutter/material.dart';

//import '../presentatin/screens/exit.dart';
import '../presentatin/screens/home.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "for me",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const MainScreen(),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
