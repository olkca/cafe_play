import 'package:cafe_pay/presentatin/screens/about_us.dart';
import 'package:cafe_pay/presentatin/screens/card.dart';
import 'package:cafe_pay/presentatin/screens/settings.dart';
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
                  // Handle "Home" button press
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCardScreen()),
                  );
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
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image.network(
                    "https://cdn.discordapp.com/attachments/1078778256720932865/1129106666936344596/photo_5290029971043110767_x.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
            MyInfoText(
              title: "Ультра делюкс мега бургер",
              content: " фунта 100% свіжої під час замовлення.",
              imageUrl:
                  "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg",
              price: 25,
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
              content: "Коктелurutrueurfgudhь",
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
