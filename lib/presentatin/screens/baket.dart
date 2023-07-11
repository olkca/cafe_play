import 'package:cafe_pay/presentatin/screens/home.dart';
import 'package:flutter/material.dart';

class PaymentSimulationApp extends StatelessWidget {
  final bool switchValue;
  final FontWeight textWeight;
  final String imageUrl;
  final int price;
  final String title;

  const PaymentSimulationApp({
    required this.switchValue,
    required this.textWeight,
    required this.imageUrl,
    required this.price,
    required this.title,
    required key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Simulation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentScreen(
        title: title,
        imageUrl: imageUrl,
        price: price,
        switchValue: switchValue,
        textWeight: textWeight,
      ),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  final String title;
  final String imageUrl;
  final int price;
  final bool switchValue;
  final FontWeight textWeight;

  const PaymentScreen({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.switchValue,
    required this.textWeight,
    Key? key,
  }) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> selectedProducts = []; // List of selected products
  double totalAmount = 0.0; // Total purchase amount

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Simulation'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            subtitle: Text('Price: \$${widget.price}'),
            leading: Image.network(widget.imageUrl),
            trailing: IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                setState(() {
                  selectedProducts.add(widget.title);
                  totalAmount += widget.price.toDouble();
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Total Amount: \$${totalAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              simulatePayment();
            },
            child: Text('Pay'),
          ),
          ElevatedButton(
            onPressed: () {
              navigateToMainScreen();
            },
            child: Text('Go to Main Screen'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Selected Products:',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectedProducts.length,
              itemBuilder: (BuildContext context, int index) {
                final product = selectedProducts[index];
                return ListTile(
                  title: Text(product),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      setState(() {
                        selectedProducts.removeAt(index);
                        totalAmount -= widget.price.toDouble();
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void simulatePayment() {
    // Simulating the payment process
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Payment'),
          content: Text('Payment successful!'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainScreen(
                            imageUrl: widget.imageUrl,
                            price: widget.price,
                            textWeight: widget.textWeight,
                            switchValue: widget.switchValue,
                            title: widget.title,
                            imageURL: '',
                          )),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void navigateToMainScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(
          imageUrl: widget.imageUrl,
          price: widget.price,
          textWeight: widget.textWeight,
          switchValue: widget.switchValue,
          title: widget.title,
          imageURL: '',
        ),
      ),
    );
  }
}
