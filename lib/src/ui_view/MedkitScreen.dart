// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MedkitScreen extends StatefulWidget {
//   @override
//   _MedkitScreenState createState() => _MedkitScreenState();
// }

// class _MedkitScreenState extends State<MedkitScreen> {
//   Position? _currentPosition;
//   String _currentAddress = "Location not available";
//   final Set<Marker> _markers = {};

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high);
//       setState(() {
//         _currentPosition = position;
//       });
//       _getAddressFromLatLng();
//       _addMarker(position);
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future<void> _getAddressFromLatLng() async {
//     try {
//       // Here, you would use a reverse geocoding API like Google's to convert lat/lng to an address
//       // For simplicity, we're using the lat/lng as the address directly
//       setState(() {
//         _currentAddress =
//             "${_currentPosition!.latitude}, ${_currentPosition!.longitude}";
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   void _addMarker(Position position) {
//     setState(() {
//       _markers.add(
//         Marker(
//           markerId: MarkerId("current_location"),
//           position: LatLng(position.latitude, position.longitude),
//           infoWindow: InfoWindow(title: "Current Location"),
//         ),
//       );
//     });
//   }

//   void _useNearbyLandmark() {
//     // Logic to fetch and use nearby landmarks
//     // This is where you'd integrate with Google Places API or similar to fetch landmarks
//     // For this example, let's assume we fetch a nearby hospital

//     setState(() {
//       _currentAddress = "Nearby Hospital";
//       _markers.add(
//         Marker(
//           markerId: MarkerId("nearby_landmark"),
//           position: LatLng(28.7041, 77.1025), // Example coordinates
//           infoWindow: InfoWindow(title: "Nearby Hospital"),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Medkit & Emergency"),
//         backgroundColor: const Color.fromARGB(255, 255, 202, 202),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [const Color.fromARGB(255, 233, 211, 211), Color.fromARGB(255, 255, 171, 171)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/emar.png', height: 150),
//             SizedBox(height: 30),
//             Text(
//               'In case of emergency, always be prepared.',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 11, 55, 94),
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.location_on),
//               label: Text('Drop My Location',
//                style: TextStyle(
//                 color: Colors.black
//               )),
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromARGB(255, 248, 114, 114),
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               onPressed: _getCurrentLocation,
//             ),
//             SizedBox(height: 10),
//             ElevatedButton.icon(
//               icon: Icon(Icons.place),
//               label: Text('Use Nearby Landmark',
//               style: TextStyle(
//                 color: Colors.black
//               ),),
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromARGB(255, 248, 114, 114),
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//               onPressed: _useNearbyLandmark,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Current Location: $_currentAddress',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Color.fromARGB(255, 22, 85, 133),
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Expanded(
//               child: _currentPosition != null
//                   ? GoogleMap(
//                       initialCameraPosition: CameraPosition(
//                         target: LatLng(_currentPosition!.latitude,
//                             _currentPosition!.longitude),
//                         zoom: 14,
//                       ),
//                       markers: _markers,
//                     )
//                   : Center(
//                       child: CircularProgressIndicator(),
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MedkitScreen extends StatefulWidget {
  @override
  _MedkitScreenState createState() => _MedkitScreenState();
}

class _MedkitScreenState extends State<MedkitScreen> {
  Position? _currentPosition;
  String _currentAddress = "Location not available";
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
      });
      _getAddressFromLatLng();
      _addMarker(position);
    } catch (e) {
      print(e);
    }
  }

  Future<void> _getAddressFromLatLng() async {
    try {
      setState(() {
        _currentAddress =
            "${_currentPosition!.latitude}, ${_currentPosition!.longitude}";
      });
    } catch (e) {
      print(e);
    }
  }

  void _addMarker(Position position) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("current_location"),
          position: LatLng(position.latitude, position.longitude),
          infoWindow: InfoWindow(title: "Current Location"),
        ),
      );
    });
  }

  void _useNearbyLandmark() {
    setState(() {
      _currentAddress = "Nearby Hospital";
      _markers.add(
        Marker(
          markerId: MarkerId("nearby_landmark"),
          position: LatLng(28.7041, 77.1025), // Example coordinates
          infoWindow: InfoWindow(title: "Nearby Hospital"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medkit & Emergency"),
        backgroundColor: const Color.fromARGB(255, 255, 202, 202),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 233, 211, 211),
              Color.fromARGB(255, 255, 171, 171)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Images for accident and disaster helping in a GridView
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
                children: [
                  _buildImageCard(
                    'assets/accident.jpg',
                    'Accident Help',
                    'Accident assistance is crucial. Know where to find it.',
                  ),
                  _buildImageCard(
                    'assets/flood.jpg',
                    'Disaster Relief',
                    'Disaster relief services are available to help you.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'In case of emergency,Just drop your location we sent you supplies.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 55, 94),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.location_on),
              label: Text('Drop My Location',
                  style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 248, 114, 114),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: _getCurrentLocation,
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.place),
              label: Text(
                'Use Nearby Landmark',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 248, 114, 114),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: _useNearbyLandmark,
            ),
            SizedBox(height: 20),
            Text(
              'Current Location: $_currentAddress',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 22, 85, 133),
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: _currentPosition != null
                  ? GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: LatLng(_currentPosition!.latitude,
                            _currentPosition!.longitude),
                        zoom: 14,
                      ),
                      markers: _markers,
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
Widget _buildImageCard(String imagePath, String title, String description) {
  return Container(
    width: 200, // Adjust the width of the card
    height: 260, // Adjust the height of the card
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Increased border radius for a rounded effect
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0), // Increased padding for better spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 140, // Increased image height
              fit: BoxFit.cover,
            ),
            SizedBox(height: 18), // Increased spacing between image and text
            Text(
              title,
              style: TextStyle(
                fontSize: 18, // Increased font size for better readability
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 55, 94),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8), // Increased spacing between title and description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 12, // Increased font size for description
                  color: Color.fromARGB(255, 20, 19, 19),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}