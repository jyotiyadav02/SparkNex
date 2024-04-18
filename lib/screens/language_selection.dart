import 'package:flutter/material.dart';
import 'package:sparknex/screens/profile_preview.dart';
import 'package:sparknex/widgets/button.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/splashimage.png", height: 100, width: 200),
          const Text(
            "Select the language you'd like to use in SparkNex.",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
          SizedBox(height:20),
          
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Default (English)"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Hindi"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("German"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("French"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Chinese(Simplified)"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Chinese (Traditional)"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Japanese"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 5),
          ReusableButton(
              color: Colors.white,
              borderColor: const Color.fromARGB(255, 44, 5, 111),
              width: 440,
              height: 50,
              onPressed: () {},
              text: const Text("Russian"),
              textColor: const Color.fromARGB(255, 44, 5, 111)),
          const SizedBox(height: 25),
          Align(
            alignment:Alignment.bottomRight,
            child: ReusableButton(
                color: const Color.fromARGB(255, 44, 5, 111),
                borderColor: const Color.fromARGB(255, 44, 5, 111),
                width: 170,
                height: 50,
                iconColor: Colors.white,
                text: const Text("Continue"),
                textColor: Colors.white,
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePreviewScreen()));
                }),
          ),
        ],
      ),
    ));
  }
}
