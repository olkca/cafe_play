import 'package:cafe_pay/presentatin/screens/about_us.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';

class TargetScreen extends StatelessWidget {
  final bool switchValue;

  const TargetScreen(
      {Key? key,
      required this.switchValue,
      required FontWeight textWeight,
      required bool boldText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        color: Colors.transparent,
        child: Container(
          height: 56.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            color: Color(0xfff54749),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Обробка натискання кнопки "Домівка"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(
                        switchValue: switchValue,
                        textWeight: FontWeight
                            .normal, // Provide a valid FontWeight value
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Обробка натискання кнопки "Пошук"
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Обробка натискання кнопки "Кошик"
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xfff54749),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Perform menu icon action
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.quiz),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(
                    switchValue: switchValue,
                    textWeight:
                        switchValue ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              );
            },
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: const Center(),
    );
  }
}
