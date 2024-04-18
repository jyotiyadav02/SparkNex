import 'package:flutter/material.dart';

class TermsOfServiceScreen extends StatefulWidget {
  const TermsOfServiceScreen({super.key});

  @override
  State<TermsOfServiceScreen> createState() => _TermsOfServiceScreenState();
}

class _TermsOfServiceScreenState extends State<TermsOfServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 7),
            Text(
              "Terms of Service",
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
                'Welcome to SparkNex! These Terms of Service ("Terms") govern your use of the SparkNex application and services provided by us.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "By accessing or using SparkNex, you agree to abide by these Terms and our Privacy Policy. ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              // SizedBox(height: 40),
              Text(
                "Please read the following terms carefully:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "1. Account Creation:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "You must create an account to use SparkNex. You agree to provide accurate and up-to-date information during the registration process.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
             
                   SizedBox(height: 20),
              Text(
                "2. User Conduct:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "You agree to use SparkNex responsibly and refrain from engaging in any unlawful, harmful, or abusive behavior. Harassment, hate speech, and spamming are strictly prohibited.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
          
                    SizedBox(height: 20),
              Text(
                "3. Intellectual Property:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "The content and features of SparkNex are protected by copyright and other intellectual property laws. You agree not to reproduce, distribute, or modify any part of SparkNex without our consent.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
          
                    SizedBox(height: 20),
              Text(
                "4. Data Protection:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We take the privacy and security of your personal information seriously. Please review our Privacy Policy to understand how we collect, use, and protect your data.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
          
          
                    SizedBox(height: 20),
              Text(
                "5. Termination:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We reserve the right to suspend or terminate your account if you violate these Terms or engage in any unauthorized activities on SparNex.",
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
