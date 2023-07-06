import 'package:flutter/material.dart';

import '../screens/produkt.dart';

abstract class Tex extends StatelessWidget {
  final bool switchValue;

  const Tex({super.key, required this.switchValue});
}

class MyInfoText extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final double price;
  final bool switchValue;

  const MyInfoText({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.price,
    required this.switchValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: InkWell(
          onTap: () {
            // Додайте логіку навігації тут
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TargetScreen(switchValue: switchValue),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromARGB(255, 251, 218, 218),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        content,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Ціна: ${price.toStringAsFixed(2)} грн.',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
