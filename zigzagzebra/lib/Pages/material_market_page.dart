import 'package:flutter/material.dart';

class MaterialMarketPage extends StatelessWidget {
  const MaterialMarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Marketplace'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Browse Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Product 1: Description, Price'),
            ),
            const ListTile(
              title: Text('Product 2: Description, Price'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sell Items',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Item Name',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle item upload
              },
              child: const Text('Upload Item'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Chat Feature',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Chat with buyers or sellers'),
            ),
          ],
        ),
      ),
    );
  }
}
