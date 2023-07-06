import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // Обробка натискання кнопки "Домівка"
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Налаштування',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: const Text('Toggle Option'),
              value: _switchValue,
              onChanged: (newValue) {
                setState(() {
                  _switchValue = newValue;
                });
              },
            ),
            // Add more settings widgets here
          ],
        ),
      ),
    );
  }
}
