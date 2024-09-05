import 'package:flutter/material.dart';

class MedicalHelpDonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Help Donation"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Medical Help Donation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Donate to organizations providing essential medical supplies and aid to those affected by disasters.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Options",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildDonationOptions(),
          ],
        ),
      ),
    );
  }

  Widget _buildDonationOptions() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.location_on, color: Colors.redAccent),
          title: Text('Find Donation Centers'),
          onTap: () {
            // Implement functionality to find donation centers
          },
        ),
        ListTile(
          leading: Icon(Icons.history, color: Colors.redAccent),
          title: Text('View Donation History'),
          onTap: () {
            // Implement functionality to view donation history
          },
        ),
        ListTile(
          leading: Icon(Icons.info, color: Colors.redAccent),
          title: Text('Learn More About Medical Help Donation'),
          onTap: () {
            // Implement functionality to learn more about donation
          },
        ),
      ],
    );
  }
}
