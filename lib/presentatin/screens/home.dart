//import 'package:cafe_pay/presentatin/screens/about_us.dart';
import 'package:cafe_pay/presentatin/screens/card.dart';
//import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';
import '../widget/home_widget.dart';

class MainScreen extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;

  const MainScreen({
    Key? key,
    required this.switchValue,
    required this.textWeight,
    required String imageUrl,
    required int price,
    required String title,
    required String imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.red, // Колір активного пункту
        unselectedItemColor: Colors.grey, // Колір неактивних пунктів
        currentIndex: 0, // Поточний індекс активного пункту
        onTap: (index) {
          // Обробка натискання пункту BottomNavigationBar
          if (index == 0) {
            // Home
          } else if (index == 1) {
            // Search
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddCardScreen()),
            );
            // Cart
          } else if (index == 3) {
            // Settings (перейти на сторінку налаштувань)
          }
        },
      ),
      //),
      /*appBar: AppBar(
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
                        textWeight, // Передайте значення жирності шрифту
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
      ),*/
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0), // Add top padding here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Cafe Play",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              MyInfoText(
                title: "Beef Burger",
                content: "<Бургер>",
                imageUrl:
                    "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg",
                price: 63,
                onPressed: () {
                  _navigateToProductScreen(
                    context,
                    "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg",
                    "Beef Burger",
                    63,
                  );
                },
                switchValue: switchValue,
                boldText: true,
                textWeight: textWeight,
              ),
              MyInfoText(
                title: "King Sundae",
                content: "Коктель",
                imageUrl:
                    "https://cdn.discordapp.com/attachments/1108066032448438416/1126207069209493525/BK_Sundae-Chocolate.png",
                price: 100,
                onPressed: () {
                  _navigateToProductScreen(
                    context,
                    "https://cdn.discordapp.com/attachments/1108066032448438416/1126207069209493525/BK_Sundae-Chocolate.png",
                    "King Sundae",
                    100,
                  );
                },
                switchValue: switchValue,
                boldText: true, // Встановіть жирність шрифту для "King Sundae"
                textWeight: textWeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _navigateToProductScreen(
    BuildContext context, String imageUrl, String title, int price) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductScreen(
        imageUrl: imageUrl,
        title: title,
        price: price,
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
ProductScreen(
    {required String imageUrl, required String title, required int price}) {}
