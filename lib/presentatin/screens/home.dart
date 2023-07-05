import 'package:flutter/material.dart';

import '../widget/home_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    MaterialPageRoute(builder: (context) => const MainScreen()),
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
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
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
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //-------------наповнення інформацією-----------------
            MyInfoText(
              title: "Beef Burger",
              content: "типу опис там какіш мякіш",
              imageUrl:
                  "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg", // Provide the image URL
              price: 63, // Provide the price value
            ),
            MyInfoText(
              title: "King Sundae",
              content: "Chocolate",
              imageUrl:
                  "https://cdn.discordapp.com/attachments/1108066032448438416/1126207069209493525/BK_Sundae-Chocolate.png", // Provide the image URL
              price: 100, // Provide the price value
            ),
          ],
        ),
      ),
    );
  }
}
