import 'package:flutter/material.dart';

class AccountDeactivationScreen extends StatefulWidget {
  const AccountDeactivationScreen({super.key});

  @override
  State<AccountDeactivationScreen> createState() =>
      _AccountDeactivationScreenState();
}

class _AccountDeactivationScreenState extends State<AccountDeactivationScreen> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Deactivate Account",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Before proceeding, please consider the following:",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //  SizedBox(height:5),
                    const Row(
                      children: [
                        // Icon(Icons.dangerous),
     Text(
                          "⚠️ ",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        Text(
                          "Are you sure you want to deactivate your account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "This action is irreversible.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Select a reason for deactivating your account from the options below:",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      visualDensity:
                          const VisualDensity(vertical: -4), // Added this line
                      contentPadding: const EdgeInsets.all(0),
                      title: const Text(
                        'Personal Reasons',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Personal Reasons',
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
                        'Privacy Concerns',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Privacy Concerns',
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
                        'Found Another Platform',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Found Another Platform',
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
                        'Found Another Platform',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Found Another Platform',
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
                        'Dissatisfied with Service',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Dissatisfied with Service',
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
                        'Technical Issues',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Technical Issues',
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
                        'Taking a Break',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Taking a Break',
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
                        'Concerns about Content',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Concerns about Content',
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
                        'Others (Specify other)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Others (Specify other)',
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
                        color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            // suffixIcon: Icon(Icons.visibility_off,
                            //     color: Color.fromARGB(255, 44, 5, 111)),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 44, 5, 111),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Note: Deactivating your account will remove your profile and data permanently. You can reactivate your account within 7 days.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(255, 44, 5, 111),
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
                            "Delete Account",
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
                )
              ],
            ),
          ),
        ));
  }
}
