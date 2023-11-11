import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;
  final String imageUrl;
  final String title;
  final int price;
  final String description;

  const MyWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.switchValue,
    required this.textWeight,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color leftColor = const Color(0xffFE0A36);
    Color rightColor = const Color(0xffAC0643);
    Color topHalfColor = Colors.pink;
    Color bottomTextColor = Colors.black;

    return Scaffold(
      backgroundColor: switchValue ? topHalfColor : Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25, left: 10),
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: switchValue
                  ? leftColor
                  : const Color.fromARGB(255, 255, 0, 0),
              border: Border.all(
                  color: switchValue ? Colors.red : Colors.transparent),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: switchValue ? bottomTextColor : Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 25,
                      );
                    }),
                  ),
                ],
              ),
              Text(
                '$price ₴',
                style: TextStyle(
                  color: switchValue ? bottomTextColor : Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Опис',
                  style: TextStyle(
                    color: switchValue ? bottomTextColor : Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: switchValue ? bottomTextColor : Colors.black,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                // Дія для кнопки
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: SizedBox(
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: leftColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'добавити в кошик',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: rightColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '₴24.99',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
