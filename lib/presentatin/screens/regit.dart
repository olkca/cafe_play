import 'package:cafe_pay/presentatin/screens/exit.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
//import 'package:cafe_pay/presentatin/screens/main-screen.dart';
import 'package:flutter/material.dart';

class RegitScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

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
                padding: EdgeInsets.fromLTRB(
                    60 * fem, 10 * fem, 59 * fem, 141 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2 * fem, 10 * fem),
                      width: 254 * fem,
                      height: 70 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 0 * fem,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: SizedBox(
                                width: 141 * fem,
                                height: 40 * fem,
                                child: Center(
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2102272034 * ffem / fem,
                                      color: const Color(0xfff54749),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 110 * fem,
                            top: 0 * fem,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainScreen()),
                                );
                              },
                              child: Container(
                                width: 141 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  color: const Color(0xfff54749),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2102272034 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              8 * fem, 0 * fem, 7 * fem, 20 * fem),
                          padding: EdgeInsets.fromLTRB(
                              15 * fem, 11 * fem, 15 * fem, 11 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff8f4f4),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: TextField(
                            controller: _emailController,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272034 * ffem / fem,
                              color: const Color(0xff706c6c),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2102272034 * ffem / fem,
                                color: const Color(0xff706c6c),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              8 * fem, 0 * fem, 7 * fem, 20 * fem),
                          padding: EdgeInsets.fromLTRB(
                              15 * fem, 12 * fem, 15 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff8f4f4),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: TextField(
                            controller: _passwordController,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272034 * ffem / fem,
                              color: const Color(0xff706c6c),
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2102272034 * ffem / fem,
                                color: const Color(0xff706c6c),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              8 * fem, 0 * fem, 7 * fem, 20 * fem),
                          padding: EdgeInsets.fromLTRB(
                              15 * fem, 12 * fem, 15 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xfff8f4f4),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: TextField(
                            controller: _confirmpasswordController,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272034 * ffem / fem,
                              color: const Color(0xff706c6c),
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2102272034 * ffem / fem,
                                color: const Color(0xff706c6c),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 48 * fem),
                      width: double.infinity,
                      height: 39 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xfff54749),
                        borderRadius: BorderRadius.circular(20 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.16),
                            offset: const Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20 * fem),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2102272034 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
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
