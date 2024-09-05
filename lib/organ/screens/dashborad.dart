import 'package:flutter/material.dart';
import 'package:meddronexx/organ/modals/organ.dart';

class DashboardScreen extends StatelessWidget {
  final Organ organ;

  DashboardScreen({required this.organ});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${organ.name} Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(organ.imageUrl, width: 100, height: 100),
            SizedBox(height: 16),
            Text(
              'Description: ${organ.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Available in India: ${organ.availableInIndia ? "Yes" : "No"}',
              style: TextStyle(fontSize: 16),
            ),
            if (organ.availableInIndia)
              Text(
                'Medical Centre: ${organ.medicalCentre}',
                style: TextStyle(fontSize: 16),
              ),
            // Add more details or functionality if needed
          ],
        ),
      ),
    );
  }
}
