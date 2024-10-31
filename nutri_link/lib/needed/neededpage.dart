import 'package:flutter/material.dart';
import 'package:nutri_link/needed/reachthedonor.dart';
import 'package:nutri_link/needed/betheneeded.dart';

class NeededPage extends StatelessWidget {
  const NeededPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Needed Portal'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Reach the Donor'),
              Tab(text: 'Let The Donor Reach You'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ReachTheDonor(),
            const BeTheNeeded(),
          ],
        ),
      ),
    );
  }
}
