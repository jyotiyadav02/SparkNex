
import 'package:flutter/material.dart';
import 'package:sparknex/screens/language_selection.dart';
import 'package:sparknex/widgets/button.dart';

class AvatarSelectionScreen extends StatefulWidget {
  const AvatarSelectionScreen({Key? key}) : super(key: key);

  @override
  State<AvatarSelectionScreen> createState() => _AvatarSelectionScreenState();
}

class _AvatarSelectionScreenState extends State<AvatarSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/splashimage.png",
              height: 100,
              width: 200,
            ),
            const Text(
              "Choose the Sparky that best matches your description.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 390,
              height: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 44, 5, 111),
                border: Border.all(color: Colors.white, width: 2), // White border
              ),
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(20), // Padding around the images
                children: List.generate(4, (index) {
                  final imageName = "assets/images/avatar${index + 1}.jpeg";
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2), // White border
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imageName,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableButton(
                    color: Colors.white,
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    icon: Icons.loop,
                    width: 175,
                    height: 48,
                    onPressed: () {},
                    text: const Text("Generate Again"),
                    textColor: const Color.fromARGB(255, 44, 5, 111),
                    iconColor: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  // const SizedBox(width: 4),
                  ReusableButton(
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    icon: Icons.arrow_forward,
                    width: 134,
                    height: 48,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LanguageSelectionScreen(),
                        ),
                      );
                    },
                    text: const Text("Continue"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
