import 'package:cafe_pay/presentatin/screens/buy.dart';
import 'package:flutter/material.dart';
import '../screens/produkt.dart';

class MyInfoText extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final int price;
  final bool switchValue;
  final bool boldText;
  final FontWeight textWeight;
  final VoidCallback onPressed;

  const MyInfoText({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.price,
    required this.switchValue,
    required this.boldText,
    required this.onPressed,
    required this.textWeight,
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
                builder: (context) => ProduktScreen(
                  switchValue: switchValue,
                  textWeight: boldText ? FontWeight.bold : FontWeight.normal,
                  boldText: boldText,
                  imageUrl: imageUrl,
                  price: price,
                  title: title,
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top:
                                16.0), // Adjust the top padding value as needed
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyWidget(
                                  imageUrl: imageUrl,
                                  price: price,
                                  title: title,
                                  switchValue: switchValue,
                                  textWeight: textWeight,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: const Color.fromARGB(255, 241, 153, 154),
                          ),
                          child: const Text(
                            'Купити',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
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
