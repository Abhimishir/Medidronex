import 'package:flutter/material.dart';
import 'package:meddronexx/src/training/donation/FoodWaterDonationScreen.dart';
import 'package:meddronexx/src/training/donation/MedicalHelpDonationScreen.dart';
import 'package:meddronexx/src/training/donation/PsychologicalSupportDonationScreen.dart';
import 'package:meddronexx/src/training/donation/ShelterClothingDonationScreen.dart';
import 'package:meddronexx/src/ui_view/glass_view.dart';
import '../fitness_app_theme.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DonationScreen(),
    );
  }
}

class DonationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Support & Donate",
          style: TextStyle(
            fontFamily: FitnessAppTheme.fontName,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 1.2,
            color: FitnessAppTheme.white,
          ),
        ),
        backgroundColor: FitnessAppTheme.nearlyDarkBlue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              _buildDonationCard(
                title: "Medical Help Donation",
                description:
                    "Donate to organizations providing essential medical supplies and aid to those affected by disasters.",
                icon: Icons.medical_services,
                color: HexColor("#FF6F61"),
                context: context,
              ),
              SizedBox(height: 20),
              _buildDonationCard(
                title: "Food & Water Donation",
                description:
                    "Help provide food and clean water to communities in need.",
                icon: Icons.fastfood,
                color: HexColor("#FFD54F"),
                context: context,
              ),
              SizedBox(height: 20),
              _buildDonationCard(
                title: "Shelter & Clothing",
                description:
                    "Support efforts to provide shelter and clothing to those displaced by disasters.",
                icon: Icons.home,
                color: HexColor("#4CAF50"),
                context: context,
              ),
              SizedBox(height: 20),
              _buildDonationCard(
                title: "Psychological Support",
                description:
                    "Contribute to services offering mental health support and counseling during and after disasters.",
                icon: Icons.psychology,
                color: HexColor("#42A5F5"),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDonationCard({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.8), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: FitnessAppTheme.white, size: 32),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: FitnessAppTheme.fontName,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: FitnessAppTheme.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontFamily: FitnessAppTheme.fontName,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: FitnessAppTheme.white.withOpacity(0.8),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  _navigateToDonationDetails(context, title);
                },
                style: ElevatedButton.styleFrom(
                  primary: FitnessAppTheme.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  "Donate Now",
                  style: TextStyle(
                    fontFamily: FitnessAppTheme.fontName,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }void _navigateToDonationDetails(BuildContext context, String title) {
  switch (title) {
    case "Medical Help Donation":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MedicalHelpDonationScreen(),
        ),
      );
      break;
    case "Food & Water Donation":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodWaterDonationScreen(),
        ),
      );
      break;
    case "Shelter & Clothing":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShelterClothingDonationScreen(),
        ),
      );
      break;
    case "Psychological Support":
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PsychologicalSupportDonationScreen(),
        ),
      );
      break;
    default:
      break;
  }
}

}
