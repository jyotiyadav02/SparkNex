import 'package:flutter/material.dart';
import 'package:sparknex/screens/signup_screen.dart';
import 'package:sparknex/widgets/button.dart';

class KeyFeaturesScreen extends StatefulWidget {
  const KeyFeaturesScreen({super.key});

  @override
  State<KeyFeaturesScreen> createState() => _KeyFeaturesScreenState();
}

class _KeyFeaturesScreenState extends State<KeyFeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/splashimage.png",
                height: 80, width: 200),

                SizedBox(height:25),
            Container(
              height: 290,
              width: 470,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                color: Color.fromARGB(255, 44, 5, 111),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Key Features:",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Dynamic Conversations: Experience chats that evolve with you.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    // const SizedBox(height: 10),
                    Text(
                      "- Intelligent Insights: SparkNex learns and adapts for personalized interactions.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- Multilingual Magic: Connect seamlessly in your preferred language.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "- Playful Personality: Engage with a chatbot that's as lively as you are.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.1),
                border: Border.all(
                  color: const Color.fromARGB(255, 44, 5, 111), // Border color
                ),
              ),
              width: 440,
              height: 80,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Ready to unleash the spark? \nLet's get started!",
                ),
              ),
            ),

            const SizedBox(
                height: 20), // Creating an instance of ReusableButton
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: ReusableButton(
                color: const Color.fromARGB(255, 44, 5, 111),
                // color:Colors.white,
                borderColor: const Color.fromARGB(255, 44, 5, 111),
                icon: Icons.arrow_forward,
                width: 150,
                height: 40,
                iconColor: Colors.white,
                textColor: Colors.white,
                onPressed: () {
                  // Navigate to KeyFeaturesScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                text: const Text("Get Started",style: TextStyle(
        fontWeight: FontWeight.bold,
      ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
