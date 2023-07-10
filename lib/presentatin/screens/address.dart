import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Address extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;

  const Address({
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
                        textWeight: textWeight,
                        imageUrl: '', price: 0,
                        title: '', // Передайте значення жирності шрифту
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16.0),
          Text(
            'Адреси закладів',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: textWeight,
              fontFamily: "Times New Roman",
              color: textColor,
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 218, 218),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.network(
                      'https://cdn.discordapp.com/attachments/1108066032448438416/1126843394514243634/3861347.jpg'),
                  // Додайте віджет для вставки фотографії
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cafe в ЦУМ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Працює',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight: textWeight,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'площа Калічанська, 2',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight: textWeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 218, 218),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.network(
                      'https://cdn.discordapp.com/attachments/1108066032448438416/1126843394514243634/3861347.jpg'),
                  // Додайте віджет для вставки фотографії
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Сafe',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Не працює',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight: textWeight,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'вулиця Замостянська, 26',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight: textWeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
