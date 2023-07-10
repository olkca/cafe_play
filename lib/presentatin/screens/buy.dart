import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double fem = 1.0; // You can replace this value with your desired multiplier
    final double ffem = 1.0; // You can replace this value with your desired multiplier

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 595 * fem,
            child: Stack(
              children: [
                Positioned(
                  left: 142 * fem,
                  top: 302 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20 * fem, 8 * fem, 13 * fem, 6 * fem),
                    width: 112 * fem,
                    height: 39 * fem,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('[Image URL]'),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 0 * fem),
                          child: Text(
                            '-',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 21 * fem, 0 * fem),
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Text(
                          '+ ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xffffffff),
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
          Container(
            padding: EdgeInsets.fromLTRB(61.33 * fem, 7.63 * fem, 45.53 * fem, 7.63 * fem),
            width: double.infinity,
            height: 99 * fem,
            decoration: BoxDecoration(
              color: const Color(0xfffcfcfc),
              borderRadius: BorderRadius.circular(18 * fem),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Other child widgets...
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgreementScreen(),
                ),
              );
            },
            child: Text(
              'Add to cart',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: const Color(0xffffffff),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xfff54749),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20 * fem),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AgreementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agreement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your agreement',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Agree'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
