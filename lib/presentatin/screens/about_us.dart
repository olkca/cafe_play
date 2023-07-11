import 'package:cafe_pay/presentatin/screens/address.dart';
import 'package:cafe_pay/presentatin/screens/contakt.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;

  const About({
    Key? key,
    required this.switchValue,
    required this.textWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;
    Color textColor = switchValue ? Colors.white : Colors.black;
    Color buttonColor = const Color(0xfff54749); // Колір кнопок

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
                        textWeight: textWeight, imageUrl: '', price: 0,
                        title: '',
                        imageURL: '', // Передайте значення жирності шрифту
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
            'Про нас',
            style: TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 24.0,
              fontWeight: textWeight,
              color: textColor,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Ми мережа кав\'ярень, яка працює з 2015 року. Ми пропонуємо вам великий вибір кави, чаю, солодощів та інших напоїв. Також у нас є великий вибір кавоварок та аксесуарів до них. Є можливість замовити доставку.',
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontSize: 18.0,
                    fontWeight: textWeight,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: 200.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(
                      switchValue: switchValue,
                      textWeight:
                          textWeight, // Передайте значення жирності шрифту
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                backgroundColor: buttonColor,
              ),
              child: const Text('Контакти'),
            ),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            width: 200.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Address(
                      switchValue: switchValue,
                      textWeight:
                          textWeight, // Передайте значення жирності шрифту
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                backgroundColor: buttonColor,
              ),
              child: const Text('Наші заклади'),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
