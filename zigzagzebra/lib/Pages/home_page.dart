import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Overview',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.delete, color: Colors.green),
                SizedBox(width: 10),
                Text('Waste Submitted: 10 items'),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.green),
                SizedBox(width: 10),
                Text('Points Earned: 150'),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.eco, color: Colors.green),
                SizedBox(width: 10),
                Text('Carbon Savings: 20 kg'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Quick Access',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to Waste Matching Service Page
              },
              child: const Text('Waste Matching Service'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Material Marketplace Page
              },
              child: const Text('Material Marketplace'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Daily Tips',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.lightbulb, color: Colors.green),
                    SizedBox(width: 10),
                    Text('Tip: Reduce, Reuse, Recycle!'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.notifications, color: Colors.green),
                    SizedBox(width: 10),
                    Text('Reminder: Submit your waste details today!'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
