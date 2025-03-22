import 'package:flutter/material.dart';

class WasteMatchingPage extends StatelessWidget {
  const WasteMatchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waste Matching Service'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Upload Waste Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Handle image upload
              },
              icon: const Icon(Icons.upload_file),
              label: const Text('Upload Image'),
            ),
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
                labelText: 'Material Type',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),
            const Text(
              'AI Matching Results',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text('Nearby Recyclers: Recycler A, Recycler B'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Logistics Options',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Schedule a pickup
              },
              child: const Text('Schedule Pickup'),
            ),
            ElevatedButton(
              onPressed: () {
                // Find a drop-off location
              },
              child: const Text('Find Drop-off Location'),
            ),
          ],
        ),
      ),
    );
  }
}
