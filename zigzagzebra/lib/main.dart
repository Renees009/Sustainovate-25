import 'package:flutter/material.dart';
import 'package:zigzagzebra/Pages/diy_upcoming_tutorial_page.dart';
import 'Pages/home_page.dart';
import 'Pages/waste_matching_page.dart';
import 'Pages/material_market_page.dart';
import 'Pages/impact_tracking_dashboard_page.dart';
import 'Pages/reward_page.dart';
import 'Pages/circular_business_directory_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustainovate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const WasteMatchingPage(),
    const MaterialMarketPage(),
    const ImpactTrackingDashboardPage(),
    const RewardPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainovate'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: 'Waste Matching',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Impact Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.redeem),
            label: 'Rewards',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('DIY Upcycling Tutorials'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DIYUpcyclingTutorialPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Circular Business Directory'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CircularBusinessDirectoryPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Help & Support'),
              onTap: () {
                // Navigate to Help & Support Page
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                // Navigate to About Us Page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WasteMatchingForm extends StatelessWidget {
  const WasteMatchingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Waste Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
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
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
