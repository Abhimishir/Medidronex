import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmergencyHubScreen extends StatefulWidget {
  @override
  _EmergencyHubScreenState createState() => _EmergencyHubScreenState();
}

class _EmergencyHubScreenState extends State<EmergencyHubScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _organType;
  DateTime? _deliveryDate;
  String? _deliveryLocation;
  int? _daysUntilNeeded;

  // Method to pick a date
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _deliveryDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _deliveryDate)
      setState(() {
        _deliveryDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Hub'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 128, 169, 240), // Adjust to match your main app theme
        elevation: 5.0,
        leading: Icon(Icons.local_hospital, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Emergency Image Banner
                Center(
                  child: Image.asset(
                    'assets/emer.png',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 30),
                // Organ Type Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Organ Type',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent, // Match app theme
                    ),
                    hintText: 'e.g., Heart, Kidney',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.favorite, color: Colors.blueAccent),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the organ type';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _organType = value;
                  },
                ),
                SizedBox(height: 20),
                // Delivery Date Field
                GestureDetector(
                  onTap: () => _pickDate(context),
                  child: AbsorbPointer(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Delivery Date',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                        hintText: _deliveryDate != null
                            ? DateFormat('yMMMd').format(_deliveryDate!)
                            : 'Select a date',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.calendar_today, color: Colors.blueAccent),
                      ),
                      validator: (value) {
                        if (_deliveryDate == null) {
                          return 'Please select a delivery date';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Delivery Location Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Delivery Location',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    hintText: 'e.g., Hospital Name, City',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.location_on, color: Colors.blueAccent),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the delivery location';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _deliveryLocation = value;
                  },
                ),
                SizedBox(height: 20),
                // Days Until Needed Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Days Until Needed',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    hintText: 'e.g., 2',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.timer, color: Colors.blueAccent),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of days until the organ is needed';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _daysUntilNeeded = int.tryParse(value!);
                  },
                ),
                SizedBox(height: 40),
                // Submit Button
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process the data, e.g., send to backend or navigate to the next screen
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Processing request for $_organType delivery')));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent, // Match app theme
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(Icons.send, color: Colors.white),
                    label: Text(
                      'Submit Request',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white, // Adjust to match your main app background
    );
  }
}
