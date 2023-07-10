import 'package:cafe_pay/presentatin/screens/about_us.dart';
import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import '../path/to/my_info_text.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late SharedPreferences _prefs;
  late bool _switchValue;
  bool get switchValue => _switchValue;
  late bool _boldText;
  bool get boldText => _boldText;
  late FontWeight _textWeight; // Додайте змінну для жирності шрифту

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

    if (_prefs.containsKey('boldText')) {
      setState(() {
        _boldText = _prefs.getBool('boldText')!;
      });
    } else {
      setState(() {
        _boldText = false;
      });
      await _prefs.setBool('boldText', _boldText);
    }

    _textWeight = _boldText
        ? FontWeight.bold
        : FontWeight.normal; // Встановіть значення жирності шрифту
  }

  Future<void> savePreferences(bool switchValue, bool boldText) async {
    setState(() {
      _switchValue = switchValue;
      _boldText = boldText;
      _textWeight = _boldText
          ? FontWeight.bold
          : FontWeight.normal; // Оновіть значення жирності шрифту
    });
    await _prefs.setBool('switchValue', switchValue);
    await _prefs.setBool('boldText', boldText);
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        _switchValue ? const Color.fromARGB(214, 28, 27, 31) : Colors.white;
    Color textColor = _switchValue ? Colors.white : Colors.black;

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
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(
                        switchValue: _switchValue,
                        textWeight: _textWeight, imageUrl: '', price: 0,
                        title: '', // Передайте значення жирності шрифту
                      ),
                    ),
                  );
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Handle cart button press
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
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.quiz),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(
                    switchValue: _switchValue,
                    textWeight: _textWeight,
                  ),
                ),
              );
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
                fontFamily: "Times New Roman",
                fontSize: 24.0,
                fontWeight:
                    _textWeight, // Використовуйте значення жирності шрифту
                color: textColor,
              ),
            ),
            SwitchListTile(
              title: Text(
                'Темна тема',
                style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontSize: 14.0,
                  color: textColor,
                  fontWeight:
                      _textWeight, // Використовуйте значення жирності шрифту
                ),
              ),
              value: _switchValue,
              onChanged: (newValue) async {
                await savePreferences(newValue, _boldText);
              },
            ),
            SwitchListTile(
              title: Text(
                'Жирний текст',
                style: TextStyle(
                  fontSize: 14.0,
                  color: textColor,
                  fontFamily: "Times New Roman",
                  fontWeight:
                      _textWeight, // Використовуйте значення жирності шрифту
                ),
              ),
              value: _boldText,
              onChanged: (newValue) async {
                await savePreferences(_switchValue, newValue);
              },
            ),
            // Add more settings widgets here
          ],
        ),
      ),
    );
  }
}
