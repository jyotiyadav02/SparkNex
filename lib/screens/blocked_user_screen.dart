import 'package:flutter/material.dart';

class BlockedUserScreen extends StatefulWidget {
  const BlockedUserScreen({super.key});

  @override
  State<BlockedUserScreen> createState() => _BlockedUserScreenState();
}

class _BlockedUserScreenState extends State<BlockedUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: const Text(
          "Blocked Users",
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
          children: [
 
            const Text(
              "View and manage users you have blocked:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                height: 60,
                width: 398,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Ensure the same border radius as the container
                            child: Image.asset(
                              "assets/images/topicinfo1.jpeg",
                              height: 82,
                              width: 82,
                              fit: BoxFit.cover, // Adjust image fit as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      const Text(
                        "User1",
                        style: TextStyle(
                          color: Color.fromARGB(255, 44, 5, 111),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                        child: const Center(
                          child: Text(
                            "Unblock",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Container(
                height: 60,
                width: 398,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Ensure the same border radius as the container
                            child: Image.asset(
                              "assets/images/topicinfo2.jpeg",
                              height: 82,
                              width: 82,
                              fit: BoxFit.cover, // Adjust image fit as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      const Text(
                        "User2",
                        style: TextStyle(
                          color: Color.fromARGB(255, 44, 5, 111),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                        child: const Center(
                          child: Text(
                            "Unblock",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Container(
                height: 60,
                width: 398,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Ensure the same border radius as the container
                            child: Image.asset(
                              "assets/images/topicinfo3.jpeg",
                              height: 82,
                              width: 82,
                              fit: BoxFit.cover, // Adjust image fit as needed
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      const Text(
                        "User3",
                        style: TextStyle(
                          color: Color.fromARGB(255, 44, 5, 111),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                        child: const Center(
                          child: Text(
                            "Unblock",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
