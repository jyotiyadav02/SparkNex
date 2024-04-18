import 'package:flutter/material.dart';

class AppPermissionsScreen extends StatefulWidget {
  const AppPermissionsScreen({super.key});

  @override
  State<AppPermissionsScreen> createState() => _AppPermissionsScreenState();
}

class _AppPermissionsScreenState extends State<AppPermissionsScreen> {
  bool notificationsEnabled = false;
  bool locationsEnabled = false;
  bool cameraEnabled = false;
  bool contactsEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Permissions",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text(
            "Control and manage app permissions for SparkNex:",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
          const SizedBox(height:15),
          const Text(
            "Camera",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        const SizedBox(height:15),
                 Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Text(
                  "Allow SparkNex to access the camera",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: cameraEnabled,
                  onChanged: (value) {
                    setState(() {
                    cameraEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
        const SizedBox(height:15),
        const Text(
            "Location",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        const SizedBox(height:15),
                 Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Allow SparkNex to access your device's location",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: locationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      locationsEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
        const SizedBox(height:15),
        const Text(
            "Notifications",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        const SizedBox(height:15),
                 Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Allow SparkNex to send notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: notificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      notificationsEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
        const SizedBox(height:15),
        const Text(
            "Contacts",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        const SizedBox(height:15),
                 Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Allow SparkNex to access your contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: contactsEnabled,
                  onChanged: (value) {
                    setState(() {
                      contactsEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
        ],),
      )
      );
  }
}