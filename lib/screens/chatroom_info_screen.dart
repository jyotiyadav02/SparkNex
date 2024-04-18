import 'package:flutter/material.dart';

class ChatRoomInfoScreen extends StatefulWidget {
  const ChatRoomInfoScreen({super.key});

  @override
  State<ChatRoomInfoScreen> createState() => _ChatRoomInfoScreenState();
}

class _ChatRoomInfoScreenState extends State<ChatRoomInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: const Text(
          "ShutterSquad 📸🌟",
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Image.asset("assets/images/topic_info.jpeg",height:102,width:142)
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Ensure the same border radius as the container
                  child: Image.asset(
                    "assets/images/chatroom.jpeg",
                    height: 82,
                    width: 80,
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Anime",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                        Text(
                          "Delhi NCR, India",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Created By : John Doe",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Created : 2023",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.document_scanner,
                        color: Color.fromARGB(255, 44, 5, 111), size: 30),
                    SizedBox(width: 5),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                  ],
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.people_outline_rounded,
                        color: Color.fromARGB(255, 44, 5, 111), size: 30),
                    SizedBox(width: 5),
                    Text(
                      "23 members",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                  ],
                ),

              ],
            ),
              const SizedBox(height: 40),
               const Text(
                          "Welcome to ShutterSquad 📸🌟",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const SizedBox(height: 20),
                             const Text(
                          "ShutterSquad is the ultimate gathering place for photography enthusiasts! ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                          const Text(
                          "Whether you're a seasoned photographer, an aspiring artist, or simply passionate about capturing moments, this chat room is your creative haven. ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                        const SizedBox(height: 20),





                          const Text(
                          "📷 Topics of Discussion:",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                             const Text(
                          "- Camera Gear Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const Text(
                          "- Photo Editing Tips",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const Text(
                          "- Composition Techniques",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const Text(
                          "- Travel Photography",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const Text(
                          "- Share Your Latest Shots ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),


                        const SizedBox(height:20),
                         const Text(
                          "👥 Join our vibrant community to exchange ideas, get feedback on your photos, and connect with fellow shutterbugs from around the world. From novice to pro, everyone is welcome!",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 44, 5, 111),
                          ),
                        ),
                         const SizedBox(height:30),
                              Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 36,
                        width: 398,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                        child: const Center(
                          child: Text(
                            "Join",
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
        ),
      ),
    );
  }
}
