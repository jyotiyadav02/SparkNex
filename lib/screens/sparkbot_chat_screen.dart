import 'package:flutter/material.dart';

class SparkBotChatScreen extends StatefulWidget {
  const SparkBotChatScreen({super.key});

  @override
  State<SparkBotChatScreen> createState() => _SparkBotChatScreenState();
}

class _SparkBotChatScreenState extends State<SparkBotChatScreen> {
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
              "SparkBot",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}