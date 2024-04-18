import 'package:flutter/material.dart';

class CreateForumScreen extends StatefulWidget {
  const CreateForumScreen({Key? key}) : super(key: key);

  @override
  State<CreateForumScreen> createState() => _CreateForumScreenState();
}

class _CreateForumScreenState extends State<CreateForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Forum",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Start a new forum and spark discussions on topics you're passionate about:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),

                const SizedBox(height: 30),
                const Text(
                  "Forum Name:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                // Forum Name Field
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 44, 5, 111),
                            fontWeight: FontWeight.w300),
                        hintText:
                            'Type your forum name here', // Uncomment to add hint text
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const Text(
                  "Description:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                // Description Field
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 44, 5, 111),
                            fontWeight: FontWeight.w300),
                        hintText:
                            'Type your forum description here', // Uncomment to add hint text
                      ),
                      maxLines: 4, // Adjust this based on your requirement
                    ),
                  ),
                ),
              ],
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
                    "Create Forum",
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
    );
  }
}
