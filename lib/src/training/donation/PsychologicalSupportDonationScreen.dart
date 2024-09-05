import 'package:flutter/material.dart';

class PsychologicalSupportDonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Psychological Support Donation"),
        backgroundColor: const Color.fromARGB(255, 120, 169, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Psychological Support Donation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Contribute to services offering mental health support and counseling during and after disasters.",
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
          leading: Icon(Icons.location_on, color: Colors.blueAccent),
          title: Text('Find Donation Centers'),
          onTap: () {
            // Implement functionality to find donation centers
          },
        ),
        ListTile(
          leading: Icon(Icons.history, color: Colors.blueAccent),
          title: Text('View Donation History'),
          onTap: () {
            // Implement functionality to view donation history
          },
        ),
        ListTile(
          leading: Icon(Icons.info, color: Colors.blueAccent),
          title: Text('Learn More About Psychological Support Donation'),
          onTap: () {
            // Implement functionality to learn more about donation
          },
        ),
      ],
    );
  }
}
