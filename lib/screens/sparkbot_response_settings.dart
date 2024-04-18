import 'package:flutter/material.dart';

import '../widgets/button.dart';

class SparkBotResponseSettings extends StatefulWidget {
  const SparkBotResponseSettings({super.key});

  @override
  State<SparkBotResponseSettings> createState() =>
      _SparkBotResponseSettingsState();
}

class _SparkBotResponseSettingsState extends State<SparkBotResponseSettings> {
     String? selectedResponse;
  String? selectedTone;
  String? selectedTopic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/bot.jpeg",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 7),
            const Text(
              "Customize Response",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                  "Choose how SparkBot responds to your queries",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Informative',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Informative',
                          groupValue: selectedResponse,
                          onChanged: (String? value) {
                            setState(() {
                              selectedResponse = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Playful',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Playful',
                          groupValue: selectedResponse,
                          onChanged: (String? value) {
                            setState(() {
                              selectedResponse = value;
                            });
                          },
                        ),
                      ],
                    ),
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Professional',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Professional',
                          groupValue: selectedResponse,
                          onChanged: (String? value) {
                            setState(() {
                              selectedResponse = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Humorous',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Humorous',
                          groupValue: selectedResponse,
                          onChanged: (String? value) {
                            setState(() {
                              selectedResponse = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Select the tone SparkBot uses in responses",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Friendly',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Friendly',
                          groupValue: selectedTone,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTone = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Casual',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Casual',
                          groupValue: selectedTone,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTone= value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Formal',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Formal',
                          groupValue: selectedTone,
                          onChanged: (String? value) {
                            setState(() {
                            selectedTone = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                             const Text(
                  "Select the topics SparkBot focuses on",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
          Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Technology',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Technology',
                          groupValue: selectedTopic,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTopic = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Science',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Science',
                          groupValue: selectedTopic,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTopic = value;
                            });
                          },
                        ),
                      ],
                    ),
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Entertainment',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Entertainment',
                          groupValue:selectedTopic,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTopic = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'General Knowledge',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'General Knowledge',
                          groupValue: selectedTopic,
                          onChanged: (String? value) {
                            setState(() {
                              selectedTopic = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                                  const SizedBox(height:40),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableButton(
                        color: Colors.white,
                        borderColor: const Color.fromARGB(255, 44, 5, 111),
                        icon: Icons.loop,
                        width: 115,
                        height: 50,
                        onPressed: () {},
                        text: const Text("Reset"),
                        textColor: const Color.fromARGB(255, 44, 5, 111),
                        iconColor: const Color.fromARGB(255, 44, 5, 111),
                      ),
                    
                    SizedBox(width:15),
                      ReusableButton(
                        color: const Color.fromARGB(255, 44, 5, 111),
                        borderColor: const Color.fromARGB(255, 44, 5, 111),
                      
                        width: 90,
                        height: 48,
                        onPressed: () {
                        },
                        text: const Text("Save"),
                        textColor: Colors.white,
                        iconColor: Colors.white,
                      ),
                    ],
                  ),
                ),
          
                
          ]),
        ),
      ),
    );
  }
}
