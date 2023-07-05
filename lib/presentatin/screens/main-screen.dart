import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double fem = 1; // Замість fem потрібно встановити відповідне значення

    return Container(
      padding: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 39 * fem, 17.92 * fem),
            width: double.infinity,
            height: 48.08 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 256.83 * fem, 0 * fem),
                  width: 52.17 * fem,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 22.9299316406 * fem,
                        top: 7 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 29.24 * fem,
                            height: 37.08 * fem,
                            child: Image.network(
                              '[Image url]',
                              width: 29.24 * fem,
                              height: 37.08 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 43 * fem,
                            height: 43.94 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(215 * fem),
                              child: Image.network(
                                '[Image url]',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.08 * fem),
                  width: 25 * fem,
                  height: 25 * fem,
                  child: Image.network(
                    '[Image url]',
                    width: 25 * fem,
                    height: 25 * fem,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 45 * fem, 31 * fem),
            width: double.infinity,
            height: 188 * fem,
            child: Stack(
              children: [
                Positioned(
                  left: 0 * fem,
                  top: 11 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 310 * fem,
                      height: 177 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20 * fem),
                          color: Color(0xfffaf5f5),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 35 * fem,
                  top: 96 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 81 * fem,
                      height: 17 * fem,
                      child: Text(
                        'Beef Burger',
                        style: TextStyle(
                          fontSize: 14 * fem,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 52 * fem,
                  top: 154 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 48 * fem,
                      height: 17 * fem,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}