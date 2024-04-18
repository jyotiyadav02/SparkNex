import 'package:flutter/material.dart';
import 'package:sparknex/widgets/button.dart';
import 'package:sparknex/screens/key_features_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/splashimage.png", height: 100, width: 200),
              Container(
                height: 290,
                width: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Welcome to SparkNex!",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Discover a new era of intelligent and dynamic conversations.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "SparkNex is here to ignite your chats with creativity, and endless possibilities.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      // Creating an instance of ReusableButton
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: ReusableButton(
                          color: Colors.white,
                          borderColor:Colors.white,
                          // borderColor: const Color.fromARGB(255, 44, 5, 111),
                          icon: Icons.arrow_forward,
                          width: 120,
                          height: 40,
                          iconColor:const Color.fromARGB(255, 44, 5, 111),
                          textColor:const Color.fromARGB(255, 44, 5, 111),
                          onPressed: () {
                            // Navigate to KeyFeaturesScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const KeyFeaturesScreen()),
                            );
                          },
                          text: const Text("Next",style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
