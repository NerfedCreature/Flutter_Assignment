import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BuyNowPage.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Air Jordan 1 University Blue',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Use AssetImage to load the image from assets
            Image.asset('assets/nike.jpg'),
            SizedBox(height: 16),
            Text(
              'Product Price: \ Taka 13000',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Familiar colours, applied with a classic colour-blocking scheme, characterise this Air Jordan 1. The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the model clean and classic detailing.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Add other widgets as needed
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowPage()),
                );
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
