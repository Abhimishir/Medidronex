import 'package:flutter/material.dart';
import 'package:meddronexx/organ/modals/organ.dart';
import 'package:meddronexx/organ/screens/dashborad.dart';

class OrganListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organ Finder'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: fakeOrgans.length,
        itemBuilder: (context, index) {
          final organ = fakeOrgans[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(12.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  organ.imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                organ.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                organ.description,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(organ: organ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
