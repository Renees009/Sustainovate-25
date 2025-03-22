import 'package:flutter/material.dart';

class CircularBusinessDirectoryPage extends StatelessWidget {
  const CircularBusinessDirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Business Directory'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Search and Filter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Search Businesses',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Business Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Business 1: Details, Photos, Services'),
            ),
            const ListTile(
              title: Text('Business 2: Details, Photos, Services'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rate and Review',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Rate Business 1: 5 stars',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Review Business 1: Great service!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
