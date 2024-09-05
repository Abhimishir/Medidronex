import 'package:flutter/material.dart';
import 'package:meddronexx/FoodSuppliesScreen.dart';
import 'package:meddronexx/ShelterLocationScreen.dart';
import 'package:meddronexx/VolunteerScreen.dart';
import 'package:meddronexx/introduction_animation/introduction_animation_screen.dart';
import 'package:meddronexx/src/ui_view/MedkitScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // '/': (context) => HomeScreen(),
        '/medkit': (context) => MedkitScreen(),
        '/volunteer': (context) => VolunteerScreen(),
        '/shelter': (context) => ShelterLocationScreen(),
        '/food_supplies': (context) => FoodSuppliesScreen(),
      },
      home: const IntroductionAnimationScreen(),
    );
  }
}

