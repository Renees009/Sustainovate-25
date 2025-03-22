import 'package:flutter/material.dart';

class ImpactTrackingDashboardPage extends StatelessWidget {
  const ImpactTrackingDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Impact Tracking Dashboard'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Personal Impact Summary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Waste Reduction: 10 kg'),
            ),
            const ListTile(
              title: Text('Carbon Savings: 20 kg'),
            ),
            const ListTile(
              title: Text('Completed Tasks: 5'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Global Impact',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Total Waste Reduction: 1000 kg'),
            ),
            const ListTile(
              title: Text('Total Carbon Savings: 2000 kg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Weekly and Monthly Reports',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Generate weekly report
              },
              child: const Text('Generate Weekly Report'),
            ),
            ElevatedButton(
              onPressed: () {
                // Generate monthly report
              },
              child: const Text('Generate Monthly Report'),
            ),
          ],
        ),
      ),
    );
  }
}
