import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShelterLocationScreen extends StatelessWidget {
  // Method to open Google Maps with a URL scheme
  void _openMaps() async {
    const url = 'https://www.google.com/maps/search/?api=1&query=shelters';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open maps';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background with gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 160, 187, 230), Color.fromARGB(255, 131, 159, 237)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Main content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/nursing.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Find a safe shelter near you.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_on, color: Colors.white),
                    label: Text('Locate Shelter', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent.shade700,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: _openMaps,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
