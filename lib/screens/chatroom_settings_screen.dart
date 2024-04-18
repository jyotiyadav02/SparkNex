import 'package:flutter/material.dart';
import 'package:sparknex/widgets/button.dart';

class ChatRoomSettingsScreen extends StatefulWidget {
  const ChatRoomSettingsScreen({super.key});

  @override
  State<ChatRoomSettingsScreen> createState() => _ChatRoomSettingsScreenState();
}

class _ChatRoomSettingsScreenState extends State<ChatRoomSettingsScreen> {
  bool notificationsEnabled = false;
  bool mediaAutoDownload = false;

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
                  "assets/images/abhishek.jpeg",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 7),
            const Text(
              "Abhishek Yadav",
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
                "Receive notifications for new messages",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Notifications",
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
              const SizedBox(height: 10),
              const Text(
                "Automatically download media files",
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
                    "Media Auto Download",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  Switch(
                    value: mediaAutoDownload,
                    onChanged: (value) {
                      setState(() {
                        mediaAutoDownload = value;
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
              const SizedBox(height: 10),
              const Text(
                "View and manage members in the chat room",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      // color:
                      // Color.fromARGB(255, 44, 5, 111), // Grey background color
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    child: const Icon(Icons.add,
                        weight: 40,
                        color: Color.fromARGB(255, 44, 5, 111),
                        size: 15),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Add Sparkers",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/avatar1.jpeg"),
                ),
                title: Text(
                  "You",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                trailing: Text(
                  "Owner",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/avatar2.jpeg"),
                ),
                title: Text(
                  "Abhishek",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/shalini.jpeg"),
                ),
                title: Text(
                  "Shalini Shah",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/abhishek.jpeg"),
                ),
                title: Text(
                  "Prem kumar",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Manage and add topics for discussion",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      // color:
                      // Color.fromARGB(255, 44, 5, 111), // Grey background color
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    child: const Icon(Icons.add,
                        weight: 40,
                        color: Color.fromARGB(255, 44, 5, 111),
                        size: 15),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Add Topics",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "#Tech",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const Text(
                "#Technology",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const Text(
                "#Games",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Exit the chat room. ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              // const SizedBox(height: 15),
              const Text(
                "You won't receive further messages",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 5),

              InkWell(
                onTap: () => _showAlert(context),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.logout_rounded,
                        color: Colors.redAccent, size: 30),
                    SizedBox(width: 5),
                    Text(
                      "Leave Chat Room",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Report inappropriate behavior or content in the chat room",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 5),
              // const SizedBox(height: 10), // Fixed SizedBox height
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.report_outlined,
                      color: Colors.redAccent, size: 30),
                  SizedBox(width: 5),
                  Text(
                    "Report Room",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.redAccent,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}

void _showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.logout_rounded, color: Colors.redAccent, size: 30),
            SizedBox(width: 5),
            Text(
              "Leave Chat Room",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        content: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Are you sure you want to leave the "Tech Enthusiasts" chat room?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              Text(
                "You won't receive any more messages from this room.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ReusableButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.white,
                  borderColor: const Color.fromARGB(255, 44, 5, 111),
                  width: 115,
                  height: 38,
                  text: const Text("Cancel"),
                  textColor: const Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                child: ReusableButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    width: 115,
                    height: 38,
                    text: const Text("Leave"),
                    textColor: Colors.white),
              )
              //  ,SizedBox(width: 10),
            ],
          )
        ],
      );
    },
  );
}
