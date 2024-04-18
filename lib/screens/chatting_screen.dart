import 'package:flutter/material.dart';

import '../widgets/button.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({Key? key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  bool notificationsEnabled = false;
  bool mediaAutoEnabled = false;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Receive notifications for new messages",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 10), // Fixed SizedBox height
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(width: 20),
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
            const SizedBox(height: 20),
            const Text(
              "Automatically download media files",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),

            const SizedBox(height: 10), // Fixed SizedBox height
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Media Auto Download",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(width: 20),
                Switch(
                  value: mediaAutoEnabled,
                  onChanged: (value) {
                    setState(() {
                      mediaAutoEnabled = value;
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

            const SizedBox(height: 20),
            const Text(
              "Clear all messages in this chat",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 15),

            InkWell(
               onTap: () => _showAlertDelete(context),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.delete_outline_outlined,
                      color: Colors.redAccent, size: 30),
                  SizedBox(width: 5),
                  Text(
                    "Delete Chat",
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
              "Report any inappropriate behavior",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 15),
            // const SizedBox(height: 10), // Fixed SizedBox height
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.report_outlined, color: Colors.redAccent, size: 30),
                SizedBox(width: 5),
                Text(
                  "Report Sparker",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              "Prevent this Sparker from messaging you",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 15),
            // const SizedBox(height: 10), // Fixed SizedBox height
            InkWell(
             onTap: () => _showAlertBlock(context),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.stop_circle_outlined,
                      color: Colors.redAccent, size: 30),
                  SizedBox(width: 5),
                  Text(
                    "Block Sparker",
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
          ],
        ),
      ),
    );
  }
}


void _showAlertBlock(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.report, color: Colors.redAccent, size: 30),
            SizedBox(width: 5),
            Text(
              "Block Sparker",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        content:
              const Text(
                "Are you sure you want to block this Sparker?You will no longer receive messages from them, and they won't be able to contact you.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 44, 5, 111),
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
              const SizedBox(width: 10),
              Flexible(
                child: ReusableButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    width: 115,
                    height: 38,
                    text: const Text("Block"),
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


void _showAlertDelete(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.delete, color: Colors.redAccent, size: 30),
            SizedBox(width: 5),
            Text(
              "Delete Chat",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        content:
              const Text(
                'Are you sure you want to delete this chat? This action cannot be undone.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 44, 5, 111),
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
              const SizedBox(width: 10),
              Flexible(
                child: ReusableButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    width: 115,
                    height: 38,
                    text: const Text("Delete"),
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