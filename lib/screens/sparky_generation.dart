import 'package:flutter/material.dart';
import 'package:sparknex/screens/avatar_selection.dart';
import 'package:sparknex/widgets/button.dart';

class SparkyGenerationScreen extends StatefulWidget {
  const SparkyGenerationScreen({super.key});

  @override
  State<SparkyGenerationScreen> createState() => _SparkyGenerationScreenState();
}

class _SparkyGenerationScreenState extends State<SparkyGenerationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/splashimage.png",
                width: 170, height: 100),
            const Text(
              "Create Your Sparky!",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const Text(
              "Describe how you want your Sparky, and we'll generate some options for you.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 470,
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color.fromARGB(255, 44, 5, 111),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Describe your ideal Sparky",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 400,
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: TextFormField(
                            maxLines: null,
                            decoration: const InputDecoration(
                                border: InputBorder.none, //
                                hintText:
                                    "Describe how you want your Sparky to look like.",
                                hintMaxLines: 3,
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 44, 5, 111))),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 40),
            const Text(
              "Let SparkNex create Sparky options based on your description.",
              style: TextStyle(
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomRight,
              child: ReusableButton(
                  color: const Color.fromARGB(255, 44, 5, 111),
                  borderColor: const Color.fromARGB(255, 44, 5, 111),
                  icon: Icons.arrow_forward,
                  width: 140,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AvatarSelectionScreen(),
                      ),
                    );
                  },
                  text: const Text("Generate"),
                  textColor: Colors.white,
                  iconColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
