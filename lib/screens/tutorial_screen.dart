import 'package:flutter/material.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 7),
            Text(
              "Tutorial",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome to SparkNex! Let's get started with a quick tutorial to help you navigate the app:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "1. Finding Sparkers:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Swipe through the Explore section to discover other Sparkers with similar interests. You can also use the search feature to find specific users or topics.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "2. Sending Messages:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Tap on a Sparker's profile to send them a direct message or join a chat room. You can engage in conversations with other Sparkers and make new connections.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "3. Customizing Sparky:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Visit your profile to customize your Sparky avatar and personalize your experience. Express yourself with different avatars and themes.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "4. Reporting Issues:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "If you encounter any problems, use the Report feature to notify our support team. We're here to help resolve any issues you may encounter.ct your data.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
