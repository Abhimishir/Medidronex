import 'package:flutter/material.dart';

class FoodWaterDonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food & Water Donation"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Food & Water Donation",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Help provide food and clean water to communities in need.",
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
          leading: Icon(Icons.location_on, color: Colors.orangeAccent),
          title: Text('Find Donation Centers'),
          onTap: () {
            // Implement functionality to find donation centers
          },
        ),
        ListTile(
          leading: Icon(Icons.history, color: Colors.orangeAccent),
          title: Text('View Donation History'),
          onTap: () {
            // Implement functionality to view donation history
          },
        ),
        ListTile(
          leading: Icon(Icons.info, color: Colors.orangeAccent),
          title: Text('Learn More About Food & Water Donation'),
          onTap: () {
            // Implement functionality to learn more about donation
          },
        ),
      ],
    );
  }
}
