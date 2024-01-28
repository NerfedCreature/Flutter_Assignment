import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  value: 'BKash',
                  child: Text('BKash'),
                ),
                DropdownMenuItem<String>(
                  value: 'Rocket',
                  child: Text('Rocket'),

                ),
                DropdownMenuItem<String>(
                  value: 'Visa',
                  child: Text('Visa'),    
                ) ],
              onChanged: (value) {
                // Handle dropdown selection
              },
              hint: Text('Select an option'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
