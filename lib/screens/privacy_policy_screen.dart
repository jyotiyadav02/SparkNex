import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 7),
            Text(
              "Privacy Policy",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "At SparkNex, we are committed to protecting your privacy and ensuring the security of your personal information. Our Privacy Policy outlines how we collect, use, and protect the data you provide to us.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),

            Text("By using SparkNex, you agree to our Privacy Policy.",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),),
            SizedBox(height: 40),
            Text(
              "Our Privacy Policy covers the following areas:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Information Collection:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We collect personal information such as your name, email address, and preferences when you sign up for SparkNex.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Data Usage:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We use the information collected to provide personalized experiences, improve our services, and communicate with you.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Data Security:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We implement security measures to safeguard your personal information from unauthorized access or disclosure..",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Information Sharing:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We do not sell or share your personal information with third parties without your consent, except as required by law.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
