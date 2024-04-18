import 'package:flutter/material.dart';
import 'package:sparknex/widgets/button.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool newmessages = false;
  bool friendrequest = false;
  bool updates = false;
  bool upcomingevents = false;
  bool newfollowers = false;
  bool newnotifications = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications Settings",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Enable Notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: newnotifications,
                      onChanged: (value) {
                        setState(() {
                          newnotifications = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                const Text(
                  "Notification Preferences",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Receive notifications for new followers",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: newmessages,
                      onChanged: (value) {
                        setState(() {
                          newmessages = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Receive notifications for friend requests",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: friendrequest,
                      onChanged: (value) {
                        setState(() {
                          friendrequest = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Text(
                        "Receive notifications for updates in communities",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: updates,
                      onChanged: (value) {
                        setState(() {
                          updates = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Receive notifications for upcoming events",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: upcomingevents,
                      onChanged: (value) {
                        setState(() {
                          upcomingevents = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Receive notifications for new followers",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Switch(
                      value: newfollowers,
                      onChanged: (value) {
                        setState(() {
                          newfollowers = value;
                        });
                      },
                      activeColor: Colors.white, // Customize the active color
                      activeTrackColor: const Color.fromARGB(
                          255, 44, 5, 111), // Customize the active track color
                      inactiveThumbColor: const Color.fromARGB(255, 44, 5,
                          111), // Customize the inactive thumb color
                      inactiveTrackColor: Colors.white.withOpacity(
                          0.5), // Customize the inactive track color
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              // child: ReusableButton(
              //     color: const Color.fromARGB(255, 44, 5, 111),
              //     borderColor: const Color.fromARGB(255, 44, 5, 111),
              //     width: 160,
              //     height: 50,
              //     text: Text("Save Changes"),
              //     textColor: Colors.white),
              child:                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 52,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                        child: const Center(
                          child: Text(
                            "Save Changes",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
