import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp(); // Initialize Firebase
  }

  // ignore: unused_element
  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled =
          _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    });
  }

  void _signIn() {
    if (_isButtonEnabled) {
      // Perform sign-in logic here
      Navigator.push(
        context,
        // ignore: prefer_const_constructors
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).textScaleFactor;
    final double ffem = 1 / fem;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ... Existing code ...

            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 48 * fem),
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
                  onTap: _signIn,
                  child: Center(
                    child: Text(
                      'Sign in',
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
    );
  }
}