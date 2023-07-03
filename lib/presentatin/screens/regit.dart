import 'package:flutter/material.dart';

class RegitScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).textScaleFactor;
    final double ffem = 1 / fem;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    60 * fem, 106.82 * fem, 60 * fem, 118.71 * fem),
                width: double.infinity,
                height: 150 * fem,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://cdn.discordapp.com/attachments/1108066032448438416/1125351673662013460/baner2.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 383,
                height: 77,
                decoration: const BoxDecoration(
                  color: Color(0xfffffbfb),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(60, 21, 59, 141),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 2, 10),
                      width: 254,
                      height: 70,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 141,
                                height: 40,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xfff9f5f5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 113,
                            top: 0,
                            child: Align(
                              child: SizedBox(
                                width: 141,
                                height: 40,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xfff54749),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 36,
                            top: 11,
                            child: Align(
                              child: SizedBox(
                                width: 144,
                                height: 59,
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2102272034,
                                    color: Color(0xfff54749),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 157,
                            top: 11,
                            child: Align(
                              child: SizedBox(
                                width: 54,
                                height: 18,
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2102272034,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 7, 20),
                      padding: const EdgeInsets.fromLTRB(15, 11, 15, 11),
                      decoration: BoxDecoration(
                        color: const Color(0xfff8f4f4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Youlakou@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272034,
                          color: Color(0xff706c6c),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 7, 20),
                      padding: const EdgeInsets.fromLTRB(15, 12, 15, 10),
                      decoration: BoxDecoration(
                        color: const Color(0xfff8f4f4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272034,
                          color: Color(0xff706c6c),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 7, 30),
                      padding: const EdgeInsets.fromLTRB(15, 11, 15, 11),
                      decoration: BoxDecoration(
                        color: const Color(0xfff8f4f4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Confirm password',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272034,
                          color: Color(0xff706c6c),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 48),
                      width: double.infinity,
                      height: 39,
                      decoration: BoxDecoration(
                        color: const Color(0xfff54749),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 1.2102272034,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 11, 0),
                      width: double.infinity,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color(0xffe1dcdc),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
