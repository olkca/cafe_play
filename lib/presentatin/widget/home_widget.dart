import 'package:flutter/material.dart';
import '../screens/produkt.dart';

class MyInfoText extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final double price;
  final bool switchValue;
  final bool boldText;

  const MyInfoText({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.price,
    required this.switchValue,
    required this.boldText,
    required FontWeight textWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TargetScreen(
                  switchValue: switchValue,
                  textWeight: boldText ? FontWeight.bold : FontWeight.normal,
                  boldText: boldText,
                ),
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
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight:
                              boldText ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        content,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Times New Roman",
                          fontWeight:
                              boldText ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Ціна: ${price.toStringAsFixed(2)} грн.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Times New Roman",
                          fontWeight:
                              boldText ? FontWeight.bold : FontWeight.normal,
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
