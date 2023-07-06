// ignore_for_file: use_key_in_widget_constructors

import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late SharedPreferences _prefs;
  late bool _switchValue;
  bool get switchValue => _switchValue;
  @override
  void initState() {
    super.initState();
    initPreferences();
  }

  Future<void> initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    if (_prefs.containsKey('switchValue')) {
      setState(() {
        _switchValue = _prefs.getBool('switchValue')!;
      });
    } else {
      setState(() {
        _switchValue = false;
      });
      await _prefs.setBool('switchValue', _switchValue);
    }
  }

  Future<void> savePreferences(bool value) async {
    setState(() {
      _switchValue = value;
    });
    await _prefs.setBool('switchValue', value);
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        _switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;
    Color textColor =
        _switchValue ? Colors.white : Colors.black; // Додано новий колір тексту

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        color: Colors.transparent,
        child: Container(
          height: 56.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            color: Color(0xfff54749),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MainScreen(switchValue: _switchValue),
                    ),
                  );
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Обробка натискання кнопки "Пошук"
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Обробка натискання кнопки "Кошик"
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xfff54749),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Perform menu icon action
            //тут пусто щоб не було двійного відкриття меню
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Perform settings icon action
            },
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Налаштування',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
            SwitchListTile(
              title: Text(
                'Темна тема',
                style: TextStyle(
                  fontSize: 14.0,
                  //fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              value: _switchValue,
              onChanged: (newValue) async {
                await savePreferences(newValue);
              },
            ),
            // Add more settings widgets here
          ],
        ),
      ),
    );
  }
}
