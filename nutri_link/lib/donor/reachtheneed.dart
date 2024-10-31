import 'package:flutter/material.dart';
import 'package:nutri_link/donor/details.dart';

class ReachTheNeeded extends StatelessWidget {
  // Sample data for each section
  final List<Map<String, String>> personalNeeds = [
    {
      'name': 'Nurul Binti Samir',
      'contact': '018-1256789',
      'address': 'Jalan Bunga Raya, Pulai, Johor',
      'urgency level': 'Not urgent',
      'situation description':
          'I am a student and kind of have financial issue right now because I still don;t get my study allowance'
    },
    {
      'name': 'Ahmad Bin Rasyid',
      'contact': '016-8976789',
      'address': 'Jalan Dahlia, Pulai, Johor',
      'urgency level': 'Within a week',
      'situation description':
          'My boss hold my payment and now i dont have thing to eat',
    },
  ];

  final List<Map<String, String>> foodBankNeeds = [
    {
      'name': 'Kempas Food Bank',
      'contact': '016-8976789',
      'address': 'Kempas, Johor',
      'urgency level': 'Within a week',
      'situation description': '',
    },
  ];

  final List<Map<String, String>> communityKitchenNeeds = [
    {
      'name': 'Kempas Community Kitchen',
      'contact': '016-8976789',
      'address': 'Kempas, Johor',
      'urgency level': 'Within a week',
      'situation description': '',
    },
  ];

  ReachTheNeeded({super.key});

  // Helper widget to build a section
  Widget buildSection(
      BuildContext context, String title, List<Map<String, String>> items) {
    IconData getIcon(String title) {
      switch (title) {
        case 'Personal':
          return Icons.person;
        case 'Food Bank':
          return Icons.local_grocery_store;
        case 'Community Kitchen':
          return Icons.kitchen;
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
                        urgency: item['urgency level']!,
                        desc: item['situation description']!,
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
        title: const Text('Reach the Needed'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSection(context, 'Personal', personalNeeds),
            buildSection(context, 'Food Bank', foodBankNeeds),
            buildSection(context, 'Community Kitchen', communityKitchenNeeds),
          ],
        ),
      ),
    );
  }
}
