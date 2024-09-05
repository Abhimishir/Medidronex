import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class BloodFindingScreen extends StatefulWidget {
  @override
  _BloodFindingScreenState createState() => _BloodFindingScreenState();
}

class _BloodFindingScreenState extends State<BloodFindingScreen> with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  List<String> searchResults = [];
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void searchBloodType(String query) {
    setState(() {
      searchResults = bloodTypes
          .where((type) => type.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Blood'),
        backgroundColor: Colors.redAccent,
      ),
      body: FadeTransition(
        opacity: _animation,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Enter blood type',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (query) => searchBloodType(query),
              ),
              SizedBox(height: 20),
              Expanded(
                child: searchResults.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/error.jpg', height: 300),
                            SizedBox(height: 10),
                            Text('No results found', style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: searchResults.length,
                        itemBuilder: (context, index) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(_animation),
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: ListTile(
                                title: Text(searchResults[index]),
                                subtitle: Text('Blood type available'),
                                leading: Image.asset('assets/blood.jpeg', height: 40, width: 40),
                                trailing: Icon(Icons.arrow_forward_ios),
                                onTap: () {
                                  // Implement navigation to detailed blood bank or donor screen
                                },
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
