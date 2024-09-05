import 'package:flutter/material.dart';

class ShelterClothingDonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shelter & Clothing Donation"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Shelter & Clothing Donation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Support efforts to provide shelter and clothing to those displaced by disasters.",
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
          leading: Icon(Icons.location_on, color: Colors.greenAccent),
          title: Text('Find Donation Centers'),
          onTap: () {
            // Implement functionality to find donation centers
          },
        ),
        ListTile(
          leading: Icon(Icons.history, color: Colors.greenAccent),
          title: Text('View Donation History'),
          onTap: () {
            // Implement functionality to view donation history
          },
        ),
        ListTile(
          leading: Icon(Icons.info, color: Colors.greenAccent),
          title: Text('Learn More About Shelter & Clothing Donation'),
          onTap: () {
            // Implement functionality to learn more about donation
          },
        ),
      ],
    );
  }
}

