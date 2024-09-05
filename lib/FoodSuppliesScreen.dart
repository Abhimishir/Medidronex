import 'package:flutter/material.dart';

class FoodSuppliesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(), // Ensures full-screen coverage
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 222, 245, 255), Color.fromARGB(255, 255, 209, 239)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Adapts to content size
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/foodsup.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Essential supplies available for disaster relief.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 78, 76, 76),
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton.icon(
                  icon: Icon(Icons.local_grocery_store, color: Colors.white),
                  label: Text('View Available Supplies', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade700,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 10,
                  ),
                  onPressed: () {
                    // Navigate to SuppliesListScreen
                    _showSupplies(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSupplies(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SuppliesListScreen()),
    );
  }
}

// SuppliesListScreen with full-screen adjustments
class SuppliesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Supplies",style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 95, 136, 248),
      ),
      body: Container(
        constraints: BoxConstraints.expand(), // Ensures full-screen coverage
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 222, 245, 255), Color.fromARGB(255, 255, 209, 239)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.food_bank, color: Colors.blueAccent.shade700),
              title: Text('Rice - 5 kg'),
              subtitle: Text('Available for relief efforts'),
            ),
            ListTile(
              leading: Icon(Icons.food_bank, color: Colors.blueAccent.shade700),
              title: Text('Beans - 2 kg'),
              subtitle: Text('Available for relief efforts'),
            ),
            ListTile(
              leading: Icon(Icons.food_bank, color: Colors.blueAccent.shade700),
              title: Text('Canned Vegetables - 6 cans'),
              subtitle: Text('Available for relief efforts'),
            ),
            // Add more items here as needed
          ],
        ),
      ),
    );
  }
}
