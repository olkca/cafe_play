import 'package:flutter/material.dart';

import '../presentatin/screens/exit.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "for me",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginScreen(),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
