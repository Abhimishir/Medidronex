import 'package:flutter/material.dart';

class VolunteerScreen extends StatefulWidget {
  @override
  _VolunteerScreenState createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background with dynamic gradient
          AnimatedContainer(
            duration: Duration(seconds: 5),
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [
                  Colors.lightBlue.shade100,
                  Colors.lightBlue.shade300,
                  const Color.fromARGB(255, 143, 197, 222),
                  const Color.fromARGB(255, 214, 229, 237),
                ],
                stops: [0.0, 0.3, 0.6, 1.0],
              ),
            ),
          ),
          // Rotating image
          Center(
            child: Transform.rotate(
              angle: -0.05, // Subtle rotation
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/vol.jpg', height: 200, fit: BoxFit.cover),
              ),
            ),
          ),
          // Main content
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Join us in making a difference!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  BounceButton(onPressed: _navigateToSignUp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }
}

class BounceButton extends StatefulWidget {
  final VoidCallback onPressed;

  BounceButton({required this.onPressed});

  @override
  _BounceButtonState createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: ElevatedButton.icon(
        icon: Icon(Icons.volunteer_activism, color: Colors.white),
        label: Text('Become a Volunteer', style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue.shade700,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          textStyle: TextStyle(fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: widget.onPressed,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Dummy SignUpPage for navigation demonstration
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.lightBlue.shade700,
      ),
      body: Center(
        child: Text(
          'Sign Up Form Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
