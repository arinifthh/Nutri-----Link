import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nutri_link/donor/donorpage.dart';
import 'package:nutri_link/needed/neededpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const DonationPage(), const NeededPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurple,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            Icon(Icons.volunteer_activism),
            Icon(Icons.diversity_1),
          ]),
    );
  }
}
