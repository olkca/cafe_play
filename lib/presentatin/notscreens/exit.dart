/*import 'package:cafe_pay/presentatin/screens/regit.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).textScaleFactor;
    final double ffem = 1 / fem;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
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
                      'https://cdn.discordapp.com/attachments/1108066032448438416/1125351673662013460/baner2.png'),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.fromLTRB(60 * fem, 10 * fem, 59 * fem, 141 * fem),
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
                            child: Container(
                              width: 141 * fem,
                              height: 40 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                                color: const Color(0xfff54749),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2102272034 * ffem / fem,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 157 * fem,
                          top: 11 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegitScreen()),
                              );
                            },
                            child: SizedBox(
                              width: 54 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Sign up',
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20 * fem),
                    padding: EdgeInsets.symmetric(
                        vertical: 11 * fem, horizontal: 15 * fem),
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
                    margin: EdgeInsets.only(bottom: 90 * fem),
                    padding: EdgeInsets.symmetric(
                        vertical: 12 * fem, horizontal: 15 * fem),
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
                    margin: EdgeInsets.only(bottom: 48 * fem),
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
                          // Implement your sign-in logic here
                        },
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272034 * ffem / fem,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0 * fem),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        shadowColor: const Color(0xff000000).withOpacity(0.16),
                        elevation: 6,
                      ),
                      onPressed: () {
                        // Implement your Google Sign-in logic here
                      },
                      icon: Image.network(
                        'https://cdn.discordapp.com/attachments/1108066032448438416/1125348313798029352/search.png', // Replace with the URL of the Google logo image
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                      label: Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2102272034 * ffem / fem,
                          color: const Color(0xff706c6c),
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
    );
  }
}*/
