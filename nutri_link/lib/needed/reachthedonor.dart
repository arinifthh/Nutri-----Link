import 'package:flutter/material.dart';
import 'package:nutri_link/needed/details.dart';

class ReachTheDonor extends StatelessWidget {
  // Sample data for each section
  final List<Map<String, String>> personalDonor = [
    {
      'name': 'Erina Zainuddin',
      'contact': '012-3456789',
      'address': '123 Main St, KL',
      'donation frequency': 'Monthly',
      'donation details': 'Need to letgo some bread as I am gluten allergic'
    },
  ];

  final List<Map<String, String>> restaurantDonor = [
    {
      'name': 'Ayam Chicken Muez',
      'contact': '011-3456798',
      'address': 'Pulai, Johor',
      'donation frequency': 'Daily',
      'donation details': 'We always have leftover ayam on weekdays'
    },
  ];

  final List<Map<String, String>> organizationDonor = [
    {
      'name': 'Food Aid Foundation',
      'contact': '013-3456897',
      'address': 'Kempas, Johor',
      'donation frequency': 'Weekly',
      'donation details':
          'We target family in need to distributed food like rice, milk and wheat flour'
    },
  ];

  ReachTheDonor({super.key});

  // Helper widget to build a section
  Widget buildSection(
      BuildContext context, String title, List<Map<String, String>> items) {
    IconData getIcon(String title) {
      switch (title) {
        case 'Personal':
          return Icons.person;
        case 'Restaurant':
          return Icons.restaurant;
        case 'Organisation':
          return Icons.group;
        default:
          return Icons.help_outline; // Default icon
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ...items.map((item) => ListTile(
              title: TextButton(
                onPressed: () {
                  // Navigate to the details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        name: item['name']!,
                        contact: item['contact']!,
                        address: item['address']!,
                        frequency: item['donation frequency']!,
                        details: item['donation details']!,
                      ),
                    ),
                  );
                },
                child: Text(
                  item['name']!,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              leading: Icon(getIcon(title)),
            )),
        const SizedBox(height: 20), // Space between sections
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reach the Donor'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSection(context, 'Personal', personalDonor),
            buildSection(context, 'Restaurant', restaurantDonor),
            buildSection(context, 'Organisation', organizationDonor),
          ],
        ),
      ),
    );
  }
}
