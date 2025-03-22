import 'package:flutter/material.dart';

class DIYUpcyclingTutorialPage extends StatelessWidget {
  const DIYUpcyclingTutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIY Upcycling Tutorials'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Furniture'),
            ),
            const ListTile(
              title: Text('Fashion'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tutorial Listings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Tutorial 1: Step-by-step guide'),
            ),
            const ListTile(
              title: Text('Tutorial 2: Step-by-step guide'),
            ),
            const SizedBox(height: 20),
            const Text(
              'User Contributions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle user contribution
              },
              child: const Text('Upload Your Project'),
            ),
          ],
        ),
      ),
    );
  }
}
