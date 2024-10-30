import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Donation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DonationPage(),
    );
  }
}

class DonationPage extends StatelessWidget {
  void navigateToForm(BuildContext context, String donorType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DonationForm(donorType: donorType),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteer to Donate Food'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => navigateToForm(context, 'Organization'),
              child: Text('Organization'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => navigateToForm(context, 'Restaurant'),
              child: Text('Restaurant'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => navigateToForm(context, 'Personal'),
              child: Text('Personal'),
            ),
          ],
        ),
      ),
    );
  }
}

class DonationForm extends StatelessWidget {
  final String donorType;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();

  DonationForm({required this.donorType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$donorType Donation Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: contactController,
              decoration: InputDecoration(
                labelText: 'Contact Information',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: detailsController,
              decoration: InputDecoration(
                labelText: 'Donation Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Submit details logic here
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
