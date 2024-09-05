import 'package:flutter/material.dart';
import 'package:meddronexx/organ/modals/organ.dart';

class DetailsScreen extends StatelessWidget {
  final Organ organ;

  DetailsScreen({required this.organ});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(organ.name,),
        backgroundColor: Colors.teal[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              organ.imageUrl,
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                organ.name,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                organ.description,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
