import 'package:flutter/material.dart';
import 'package:sparknex/widgets/button.dart';

import '../widgets/interest.dart';
import 'home_screen.dart';

class ProfilePreviewScreen extends StatefulWidget {
  ProfilePreviewScreen({super.key});

  @override
  State<ProfilePreviewScreen> createState() => _ProfilePreviewScreenState();
}

class _ProfilePreviewScreenState extends State<ProfilePreviewScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> buttonTexts = [
      "Technology",
      "Music",
      "Adventure",
      "Cars",
      "Anime"
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/splashimage.png", height: 100, width: 200),
          const Text(
            "Take a final look before you dive into SparkNex.",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
          const SizedBox(height: 20),
          Container(
              width: 390,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 44, 5, 111),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            51), // Making it circular from all sides
                        border: Border.all(
                          color: Colors.black, // Specify the border color
                          width: 2, // Specify the border width
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            20), // Clip the image to match the container's circular border
                        child: Image.asset(
                          "assets/images/designer.png",
                          height: 72,
                          width: 72,
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jyoti Yadav",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "@jyoti21",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          const SizedBox(height: 20),
          Container(
              width: 390,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 44, 5, 111),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "10/10/2002",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Preferred Language",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          const SizedBox(height: 20),
          Container(
            width: 390,
            height: 158,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 44, 5, 111),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Interests",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Wrap(
                      spacing: 20, // Horizontal spacing between items
                      runSpacing: 10, // Vertical spacing between rows of items
                      children: buttonTexts.map((text) {
                        return FractionallySizedBox(
                          widthFactor: 1 /
                              4, // Ensure at least 1/3 of the available width for each item
                          child: InterestsButton(text: text),
                        );
                      }).toList(),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ReusableButton(
                color: Colors.white,
                borderColor: const Color.fromARGB(255, 44, 5, 111),
                width: 80,
                height: 50,
                text: const Text("Edit"),
                textColor: const Color.fromARGB(255, 44, 5, 111),
                onPressed: () {},
              ),
              const SizedBox(width: 20),
              ReusableButton(
                color: const Color.fromARGB(255, 44, 5, 111),
                borderColor: const Color.fromARGB(255, 44, 5, 111),
                width: 140,
                height: 50,
                text: const Text("Continue"),
                textColor: Colors.white,
                icon: Icons.arrow_forward,
                iconColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              )
            ],
          ),
          const SizedBox(width: 15),
        ],
      ),
    ));
  }
}
