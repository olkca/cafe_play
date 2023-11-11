import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardModel {
  final String cardNumber;
  final String expiryDate;
  final String cvv;

  CardModel({
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  });
}

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

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

  void deleteCard(int index) {
    setState(() {
      cards.removeAt(index);
      saveCards();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    buildTextField(_cardNumberController, 'Card Number', 16),
                    const SizedBox(height: 16.0),
                    buildTextField(_expiryDateController, 'Expiry Date', 5),
                    const SizedBox(height: 16.0),
                    buildTextField(_cvvController, 'CVV', 3),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        String cardNumber = _cardNumberController.text;
                        String expiryDate = _expiryDateController.text;
                        String cvv = _cvvController.text;

                        if (cardNumber.length == 16 &&
                            (expiryDate.length == 4 ||
                                expiryDate.length == 5) &&
                            cvv.length == 3) {
                          CardModel card = CardModel(
                            cardNumber: cardNumber,
                            expiryDate: expiryDate,
                            cvv: cvv,
                          );
                          setState(() {
                            cards.insert(0, card);
                          });
                          _cardNumberController.clear();
                          _expiryDateController.clear();
                          _cvvController.clear();
                          saveCards();
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  CardModel card = cards[index];
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      deleteCard(index);
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      child: const Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(Icons.delete, color: Colors.white),
                      ),
                    ),
                    child: ListTile(
                      title: Text(card.cardNumber,
                          style: const TextStyle(color: Colors.black)),
                      subtitle: Text('Expiry Date: ${card.expiryDate}',
                          style: const TextStyle(color: Colors.black)),
                      trailing: InkWell(
                        onTap: () {
                          _showCvvDialog(card.cvv);
                        },
                        child: const Text('CVV: ***',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCvvDialog(String cvv) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('CVV'),
          content: Text(cvv),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget buildTextField(
      TextEditingController controller, String labelText, int maxLength) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
        ),
        maxLength: maxLength,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
