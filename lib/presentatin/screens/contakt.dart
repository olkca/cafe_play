// ignore: unused_import
import 'package:cafe_pay/presentatin/screens/address.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;

  const Contact({
    Key? key,
    required this.switchValue,
    required this.textWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;
    Color textColor = switchValue ? Colors.white : Colors.black;

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(
                        switchValue: switchValue,
                        textWeight:
                            textWeight, // Передайте значення жирності шрифту
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Handle "Search" button press
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Handle "Cart" button press
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
              // Perform settings icon action
            },
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            Text(
              'Контакти',
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 24.0,
                fontWeight: textWeight,
                color: textColor,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Телефони:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Оксана: 097-123-45-67',
              style: TextStyle(
                fontSize: 16.0,
                color: textColor,
              ),
            ),
            Text(
              'Оля: 063-123-45-67',
              style: TextStyle(
                fontSize: 16.0,
                color: textColor,
              ),
            ),
            Expanded(
                child:
                    Container()), // Adds empty space to push the following content to the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.network(
                    'https://cdn.discordapp.com/attachments/1108066032448438416/1126899510002593812/2504792.png',
                    width: 150.0,
                    height: 150.0,
                  ),
                  onPressed: () {
                    // Handle Facebook button press
                  },
                ),
                IconButton(
                  icon: Image.network(
                    'https://cdn.discordapp.com/attachments/1108066032448438416/1126862883754623016/1658586823instagram-logo-transparent.png',
                    width: 150.0,
                    height: 150.0,
                  ),
                  onPressed: () {
                    // Handle Instagram button press
                  },
                ),
                IconButton(
                  icon: Image.network(
                    'https://cdn.discordapp.com/attachments/1108066032448438416/1126899510296182814/logo-tiktok.png',
                    width: 150.0,
                    height: 150.0,
                  ),
                  onPressed: () {
                    // Handle TikTok button press
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
