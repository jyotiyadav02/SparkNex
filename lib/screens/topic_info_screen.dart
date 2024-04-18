import 'package:flutter/material.dart';

class TopicInfoScreen extends StatefulWidget {
  const TopicInfoScreen({super.key});

  @override
  State<TopicInfoScreen> createState() => _TopicInfoScreenState();
}

class _TopicInfoScreenState extends State<TopicInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: const Text(
          "Anime",
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
            Row(
              children: [
                // Image.asset("assets/images/topic_info.jpeg",height:102,width:142)
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Ensure the same border radius as the container
                  child: Image.asset(
                    "assets/images/topic_info.jpeg",
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
            const SizedBox(height: 40),
            const Text(
              "Dive into the captivating world of Anime! Discuss your favorite series, share recommendations, and connect with fellow anime enthusiasts.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/compass.png", height: 24),
                const SizedBox(width: 5),
                const Text(
                  "Related Chat Rooms",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ],
            ),
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
                        "Anime Lovers Hangout",
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
                        "Cosplay Creators Guild",
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
                        "Manga Enthusiasts Club",
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
                ))
          ],
        ),
      ),
    );
  }
}
