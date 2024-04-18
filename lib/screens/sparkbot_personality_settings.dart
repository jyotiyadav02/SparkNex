import 'package:flutter/material.dart';

import '../widgets/button.dart';

class SparkBotPersonalitySettings extends StatefulWidget {
  const SparkBotPersonalitySettings({super.key});

  @override
  State<SparkBotPersonalitySettings> createState() =>
      _SparkBotPersonalitySettingsState();
}

class _SparkBotPersonalitySettingsState
    extends State<SparkBotPersonalitySettings> {
  String? selectedOption;
  String? selectedHumor;
  String? selectedEngagement;
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
              "Customize Personality",
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
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select the traits you want SparkBot to embody",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Adventurous',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Knowledgeable',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Fun-loving',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Calm and Wise',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Choose how humorous SparkBot's responses are",
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
                          'High',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'High',
                          groupValue: selectedHumor,
                          onChanged: (String? value) {
                            setState(() {
                              selectedHumor = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Moderate',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Moderate',
                          groupValue: selectedHumor,
                          onChanged: (String? value) {
                            setState(() {
                              selectedHumor = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Low',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Low',
                          groupValue: selectedHumor,
                          onChanged: (String? value) {
                            setState(() {
                              selectedHumor = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Define how SparkBot engages in conversations",
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
                          'Concise',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Concise',
                          groupValue: selectedEngagement,
                          onChanged: (String? value) {
                            setState(() {
                              selectedEngagement = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chatty',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Chatty',
                          groupValue: selectedEngagement,
                          onChanged: (String? value) {
                            setState(() {
                              selectedEngagement = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Balanced',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Radio<String>(
                          value: 'Balanced',
                          groupValue: selectedEngagement,
                          onChanged: (String? value) {
                            setState(() {
                              selectedEngagement = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  "Select SparkBot's preferred areas of interest",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
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
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Books',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Movies',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Travel',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Checkbox(
                      visualDensity: VisualDensity(vertical: -4),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ],
                ),
                SizedBox(height: 80),
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
                      SizedBox(width: 15),
                      ReusableButton(
                        color: const Color.fromARGB(255, 44, 5, 111),
                        borderColor: const Color.fromARGB(255, 44, 5, 111),
                        width: 90,
                        height: 48,
                        onPressed: () {},
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
