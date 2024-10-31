import 'package:flutter/material.dart';
import 'package:nutri_link/donor/reachtheneed.dart';
import 'package:nutri_link/donor/bethedonor.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Donation Portal'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Reach the Needed'),
              Tab(text: 'Be The Donor'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ReachTheNeeded(),
            const BeTheDonor(),
          ],
        ),
      ),
    );
  }
}
