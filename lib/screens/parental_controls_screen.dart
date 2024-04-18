import 'package:flutter/material.dart';

class ParentalControlsScreen extends StatefulWidget {
  const ParentalControlsScreen({super.key});

  @override
  State<ParentalControlsScreen> createState() => _ParentalControlsScreenState();
}

class _ParentalControlsScreenState extends State<ParentalControlsScreen> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Parental Controls",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Set parental controls for child accounts:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Age-based Content Restrictions",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Choose appropriate content restrictions based on age:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    '0-5 years',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: '0-5 years',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    '6-12 years',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: '6-12 years',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    '13-17 years',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: '13-17 years',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Custom (Specify)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Custom (Specify)',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      maxLines: 2, // Adjust this based on your requirement
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Communication Limits",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Set communication limits for child accounts:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Full Communication',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Full Communication',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Friends Only',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Friends Only',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Limited Communication',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Limited Communication',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'No Communication',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'No Communication',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Friend Request Restrictions",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Control friend request interactions for child accounts:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Allow Friend Requests',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Allow Friend Requests',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Friends of Friends Only',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Friends of Friends Only',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity:
                      const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'No Friend Requests Allowed',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'No Friend Requests Allowed',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 38,
                    width: 398,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 44, 5, 111),
                    ),
                    child: const Center(
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
