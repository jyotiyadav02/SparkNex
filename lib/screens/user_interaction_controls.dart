import 'package:flutter/material.dart';

class UserInteractionControls extends StatefulWidget {
  const UserInteractionControls({super.key});

  @override
  State<UserInteractionControls> createState() =>
      _UserInteractionControlsState();
}

class _UserInteractionControlsState extends State<UserInteractionControls> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "User Interaction Controls",
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
                  "Define who can interact with you:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Send Friend Requests",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Choose who can send you friend requests:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Everyone',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Everyone',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Friends of Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Friends of Friends',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Only Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Only Friends',
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
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'No One',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'No One',
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
                  "Send Messages",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Choose who can send you messages:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Everyone',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Everyone',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Friends of Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Friends of Friends',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Only Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Only Friends',
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
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'No One',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'No One',
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
                  "View Your Posts",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Choose who can view your posts:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Everyone',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Everyone',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Friends of Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Friends of Friends',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'Only Friends',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'Only Friends',
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
                  visualDensity: const VisualDensity(vertical: -4), // Added this line
                  contentPadding: const EdgeInsets.all(0),
                  title: const Text(
                    'No One',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  trailing: Radio<String>(
                    value: 'No One',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                
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
