import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardModel {
  final String cardNumber;
  final String expiryDate;
  final String cvv;

  CardModel(
      {required this.cardNumber, required this.expiryDate, required this.cvv});
}

// ignore: use_key_in_widget_constructors
class AddCardScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  List<CardModel> cards = [];
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadSavedCards();
  }

  void loadSavedCards() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedCards = prefs.getStringList('cards');
    if (savedCards != null) {
      setState(() {
        cards = savedCards.map((cardString) {
          List<String> cardData = cardString.split(',');
          return CardModel(
            cardNumber: cardData[0],
            expiryDate: cardData[1],
            cvv: cardData[2],
          );
        }).toList();
      });
    }
  }

  void saveCards() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cardStrings = cards.map((card) {
      return "${card.cardNumber},${card.expiryDate},${card.cvv}";
    }).toList();
    await prefs.setStringList('cards', cardStrings);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        saveCards();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Додати картку'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _cardNumberController,
                decoration: const InputDecoration(
                  labelText: 'Номер карти',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _expiryDateController,
                decoration: const InputDecoration(
                  labelText: 'Термін дії',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _cvvController,
                decoration: const InputDecoration(
                  labelText: 'CVV',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Обробник натиснення кнопки "Додати"
                  String cardNumber = _cardNumberController.text;
                  String expiryDate = _expiryDateController.text;
                  String cvv = _cvvController.text;
                  CardModel card = CardModel(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cvv: cvv,
                  );
                  setState(() {
                    cards.add(card);
                  });
                  _cardNumberController.clear();
                  _expiryDateController.clear();
                  _cvvController.clear();
                },
                child: const Text('Додати'),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    CardModel card = cards[index];
                    return ListTile(
                      title: Text(card.cardNumber),
                      subtitle: Text('Термін дії: ${card.expiryDate}'),
                      trailing: Text('CVV: ${card.cvv}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
