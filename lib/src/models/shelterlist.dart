import 'package:flutter/material.dart';

class ShelterListScreen extends StatelessWidget {
  final List<Shelter> shelters = [
    Shelter(name: 'Shelter A', address: '123 Main St', distance: '1.2 km'),
    Shelter(name: 'Shelter B', address: '456 Elm St', distance: '2.5 km'),
    Shelter(name: 'Shelter C', address: '789 Oak St', distance: '3.1 km'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shelters Near You'),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: ListView.builder(
        itemCount: shelters.length,
        itemBuilder: (context, index) {
          final shelter = shelters[index];
          return ListTile(
            contentPadding: EdgeInsets.all(16.0),
            title: Text(shelter.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: Text('${shelter.address}\nDistance: ${shelter.distance}'),
            isThreeLine: true,
            leading: Icon(Icons.location_on, color: Colors.blueAccent.shade700),
          );
        },
      ),
    );
  }
}

class Shelter {
  final String name;
  final String address;
  final String distance;

  Shelter({required this.name, required this.address, required this.distance});
}
