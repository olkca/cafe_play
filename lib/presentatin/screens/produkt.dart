import 'package:flutter/material.dart';

class ProduktScreen extends StatelessWidget {
  final String imageUrl;

  const ProduktScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff54749),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 595,
              child: Stack(
                children: [
                  Positioned(
                    left: 142,
                    top: 302,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 8, 13, 6),
                      width: 112,
                      height: 39,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                height: 1.2125,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 21, 0),
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                height: 1.2125,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Text(
                            '+ ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              height: 1.2125,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Other positioned widgets...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
