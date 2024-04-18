import 'package:flutter/material.dart';
import 'package:sparknex/screens/change_email_screen.dart';
import 'package:sparknex/screens/community_forums_screen.dart';
import 'package:sparknex/screens/contact_support_screen.dart';
import 'package:sparknex/screens/feedback_Screen.dart';
import 'package:sparknex/screens/frequent_ask_ques_screen.dart';
import 'package:sparknex/screens/privacy_policy_screen.dart';
import 'package:sparknex/screens/report_issue_screen.dart';
import 'package:sparknex/screens/terms_of_service.dart';
import 'package:sparknex/screens/tutorial_screen.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: const Text(
          "Help and Support",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
                        const Text(
              "Get assistance and find answers to your questions:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQPage()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FAQs",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactSupportScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Contact Support",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportIssueScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Report an Issue",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicyScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsOfServiceScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms of Service",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TutorialScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tutorials",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CommunityForumsScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Community Forums",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right_rounded, color: Colors.white),
                  ],
                ),
              ),
            ),
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feedback",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
