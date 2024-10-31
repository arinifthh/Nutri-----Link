import 'package:flutter/material.dart';

class BeTheNeeded extends StatelessWidget {
  const BeTheNeeded({super.key});

  void navigateToForm(BuildContext context, String neededType) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NeededForm(neededType: neededType),
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
            onPressed: () => navigateToForm(context, 'Food Bank'),
            child: const Text('Food Bank'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => navigateToForm(context, 'Community Kitchen'),
            child: const Text('Community Kitchen'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => navigateToForm(context, 'Personal'),
            child: const Text('Personal'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class NeededForm extends StatelessWidget {
  final String neededType;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  NeededForm({super.key, required this.neededType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$neededType Needed Form'),
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
                labelText: 'Name',
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
            // Urgency Level Dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Urgency Level',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'Immediate', child: Text('Immediate')),
                DropdownMenuItem(
                    value: 'Within a week', child: Text('Within a week')),
                DropdownMenuItem(
                    value: 'Not urgent', child: Text('Not urgent')),
              ],
              onChanged: (value) {
                // Handle selection if needed
              },
            ),
            const SizedBox(height: 10),

            // Description Field
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Describe Your Situation',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 20),

            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission logic
                  print('Name: ${nameController.text}');
                  print('Contact: ${contactController.text}');
                  print('Address: ${addressController.text}');
                  print('Description: ${descriptionController.text}');

                  // Show success dialog
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Request Submitted'),
                      content: const Text(
                          'Your request for assistance has been submitted successfully.'),
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
