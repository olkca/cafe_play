import 'package:flutter/material.dart';
import 'buy.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        color: Colors.transparent,
        child: Container(
          height: 56.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            color: Color(0xfff54749),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.home),
                onPressed: () {
                  // Handle "Home" button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.search),
                onPressed: () {
                  // Handle "Search" button press
                },
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  _addToCart(context);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xfff54749),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Perform menu icon action
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Perform settings icon action
            },
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyInfoText(
              title: "Beef Burger",
              content: "Description of the burger",
              imageUrl: "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg",
              price: 63,
              onPressed: () {
                _navigateToProductScreen(
                  context,
                  "https://cdn.discordapp.com/attachments/1108066032448438416/1126099275412156457/2015-02-24-olive-test-d5b505c.jpg",
                  "Beef Burger",
                  63,
                );
              },
            ),
            MyInfoText(
              title: "King Sundae",
              content: "Chocolate",
              imageUrl: "https://cdn.discordapp.com/attachments/1108066032448438416/1126207069209493525/BK_Sundae-Chocolate.png",
              price: 100,
              onPressed: () {
                _navigateToProductScreen(
                  context,
                  "https://cdn.discordapp.com/attachments/1108066032448438416/1126207069209493525/BK_Sundae-Chocolate.png",
                  "King Sundae",
                  100,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addToCart(BuildContext context) {
    // Add to cart logic here

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BuyScreen()),
    );
  }

  void _navigateToProductScreen(
      BuildContext context, String imageUrl, String title, int price) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(
          imageUrl: imageUrl,
          title: title,
          price: price,
        ),
      ),
    );
  }
}

class MyInfoText extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final int price;
  final VoidCallback onPressed;

  const MyInfoText({
    Key? key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(content),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '\$$price',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  // Handle "Buy" button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Text(
                  'Buy',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;

  const ProductScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details - $title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '$price грн',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyScreen extends StatelessWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Text(
          'Your cart',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
