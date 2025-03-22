import 'package:flutter/material.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rewards'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Points Overview',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Current Points: 150'),
            ),
            const ListTile(
              title: Text('Badges Earned: 3'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Challenges',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Challenge: Recycle 10 kg of plastic this month'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Redeem Rewards',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Redeem points for rewards
              },
              child: const Text('Redeem Points'),
            ),
          ],
        ),
      ),
    );
  }
}
