import 'package:flutter/material.dart';
import 'package:sparknex/screens/community_forums_screen.dart';

import 'package:sparknex/screens/direct_message_Screen.dart';
import 'package:sparknex/screens/spark_bot_settings_screen.dart';
import 'package:sparknex/screens/sparkbot_chat_screen.dart';
import 'package:sparknex/widgets/homescreen.dart';
import 'package:sparknex/widgets/homescreen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/splashimage.png",
            height: 70, width: 120),
        actions: const [
          Icon(
            Icons.menu,
            color: Color.fromARGB(255, 44, 5, 111),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to Sparky's Realm, John!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const Text(
                "🔒 Your Safety Matters!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const Text(
                'Please chat responsibly. Report any concerns using the "Report" button.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 44, 5, 111),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SparkBotChatScreen()));
                  },
                  child: const homeScreenWidget(
                    name: "SparkBot",
                    description: "Ask me anything! I'm here to chat.",
                    image: "assets/images/bot.jpeg",
                    // duration: "10 mins",
                    containerColor: Color.fromARGB(
                        255, 44, 5, 111), // Dynamic container color
                    nameColor: Colors.white,
                    nameFontSize: 16,
                    nameFontWeight: FontWeight.w600,
                    descriptionColor: Colors.white,
                    descriptionFontSize: 12,
                    descriptionFontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 35,
                      width: 188,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                      child: const Center(
                        child: Text(
                          "ChatterBox Delights",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) =>
                                  const DirectMessageScreen()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                      child: const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(255, 44, 5, 111),
                  // border: Border.all(color: Colors.white, width: 2), // White border
                ),
                child: const homeScreenWidget(
                  containerColor: Colors.white,
                  name: "Abhishek Yadav",
                  description: "Hey there! What's your favorite book genre? 📚",
                  image: "assets/images/abhishek.jpeg",
                  nameFontSize: 16,
                  nameFontWeight: FontWeight.w600,
                  descriptionFontSize: 12,
                  descriptionFontWeight: FontWeight.w400,
                  duration: "2h",
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const homeScreenWidget(
                  containerColor: Colors.white,
                  name: "Ankit Tiwari",
                  description:
                      "Exploring new places this weekend. Any travel recommendations? ✈️",
                  image: "assets/images/aman.jpeg",
                  nameFontSize: 16,
                  nameFontWeight: FontWeight.w600,
                  descriptionFontSize: 12,
                  descriptionFontWeight: FontWeight.w400,
                  duration: "5h",
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const homeScreenWidget(
                  containerColor: Colors.white,
                  name: "Shalini yadav",
                  description: "Hey! Free tonight?",
                  image: "assets/images/shalini.jpeg",
                  nameFontSize: 16,
                  nameFontWeight: FontWeight.w600,
                  descriptionFontSize: 12,
                  descriptionFontWeight: FontWeight.w400,
                  duration: "10h",
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  child: const Center(
                    child: Text(
                      "Buzzworthy Zone",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const CustomContainer(
                  text1: "🔥 Trending: ",
                  text3: "Stay updated on the latest in the tech world!",
                  text2: "#TechTalks"),
              const SizedBox(height: 4),
              const CustomContainer(
                  text1: "🔥 Trending: ",
                  text3: "Discover hidden gems in your city's food scene.",
                  text2: " #FoodieFinds"),
              const SizedBox(height: 4),
              const CustomContainer(
                  text1: "🔥 Trending: ",
                  text3: "Join the Book Club and discuss your favorite reads.",
                  text2: "#BookClub"),
              const SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  child: const Center(
                    child: Text(
                      "Talk of the Town",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const SizedBox(height: 15),
              const CustomContainer(
                  text1: "",
                  text3: "Join the workshop and unleash your creativity!",
                  text2: "🌟 Featured: Creative Writing Workshop"),
              const SizedBox(height: 4),
              const CustomContainer(
                  text1: "",
                  text3: "Share your best travel photos and get featured!",
                  text2: "🌟 Featured: Travel Photography Challenge"),
              const SizedBox(height: 4),
              const CustomContainer(
                  text1: "",
                  text3: "Discuss wellness tips and self-care practices!",
                  text2: "🌟 Featured: Wellness Wednesday"),
              const SizedBox(height: 20),
              Container(
                  height: 35,
                  width: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  child: const Center(
                    child: Text(
                      "Sparky's Wisdom Well",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              // const CustomContainer(text1: "", text3: "", text2: "🌟 Sparky's Insight: Discover new interests\n for personalized content!"), const SizedBox(height: 4),
              // const CustomContainer(text1: "", text3: "", text2: "🌟 Sparky's Tip: Customize your Sparky to \n stand out in conversations!"), const SizedBox(height: 20),
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
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "🌟 Sparky's Insight: Discover new interests for personalized content!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
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
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "🌟 Sparky's Tip: Customize your Sparky to stand out in conversations!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Privacy Settings Shortcut",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 60,
                width: 398,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 44, 5, 111),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Parental Control",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Context) => const CommunityForumsScreen()));
                },
                child: Container(
                  height: 60,
                  width: 398,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 44, 5, 111),
                    ),
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.document_scanner_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Community's Guidelines",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
