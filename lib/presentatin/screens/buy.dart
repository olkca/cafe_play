import 'package:cafe_pay/presentatin/screens/baket.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:cafe_pay/presentatin/screens/settings.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';

class MyWidget extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;
  final String imageUrl;
  final String title;
  final int price;

  const MyWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.switchValue,
    required this.textWeight,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreen(
                            title: 'Home',
                            imageUrl: imageUrl,
                            price: price,
                            textWeight: textWeight,
                            switchValue: switchValue)),
                  );
                  // Обработка нажатия кнопки "Home"
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
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      imageUrl,
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      '$price грн',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentSimulationApp(
                            imageUrl: imageUrl,
                            price: price,
                            title: title,
                            switchValue: switchValue,
                            textWeight: textWeight)),
                  );
                  /*showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Enter Credit Card Number'),
                        content: const TextField(
                          decoration: InputDecoration(
                            labelText: 'Credit Card Number',
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(
                                    imageUrl: imageUrl,
                                    price: price,
                                    title: title,
                                    switchValue: switchValue,
                                    textWeight: textWeight,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );*/
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color(0xfff54749),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
