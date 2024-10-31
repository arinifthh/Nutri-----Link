import 'package:flutter/material.dart';

class BeTheDonor extends StatelessWidget {
  const BeTheDonor({super.key});

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => navigateToForm(context, 'Organization'),
            child: const Text('Organization'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => navigateToForm(context, 'Restaurant'),
            child: const Text('Restaurant'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => navigateToForm(context, 'Personal'),
            child: const Text('Personal'),
          ),
        ],
      ),
    );
  }
}

class DonationForm extends StatelessWidget {
  final String donorType;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController donationDetailsController =
      TextEditingController();
  final TextEditingController notesController = TextEditingController();

  DonationForm({super.key, required this.donorType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$donorType Donation Form'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name Field
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name / Organization Name / Restaurant Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Contact Information Field
            TextField(
              controller: contactController,
              decoration: const InputDecoration(
                labelText: 'Contact Information (Phone/Email)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Address Field
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Donation Frequency Dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Donation Frequency',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'One-time', child: Text('One-time')),
                DropdownMenuItem(value: 'Weekly', child: Text('Weekly')),
                DropdownMenuItem(value: 'Monthly', child: Text('Monthly')),
              ],
              onChanged: (value) {
                // Handle selected value here if needed
              },
            ),
            const SizedBox(height: 10),

            // Donation Details Field
            TextField(
              controller: donationDetailsController,
              decoration: const InputDecoration(
                labelText: 'Donation Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 10),

            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission logic here
                  print('Name: ${nameController.text}');
                  print('Contact: ${contactController.text}');
                  print('Address: ${addressController.text}');
                  print('Donation Details: ${donationDetailsController.text}');
                  print('Notes: ${notesController.text}');

                  // Optionally, show a success dialog or snackbar
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Submission Successful'),
                      content:
                          const Text('Thank you for your generous donation!'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
