import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications Center",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
        actions: const [
          Icon(
            Icons.keyboard_double_arrow_down_rounded,
            color: Color.fromARGB(255, 44, 5, 111),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "You have a new message from @AnimeFan123.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                      child: const Center(
                        child: Text(
                          "View Message",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ],
            ),
            const Divider(thickness: 0.7),
            Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "You received a friend request from @MangaMaster.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 44, 5, 111),
                          ),
                          child: const Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          )),
                      const SizedBox(width: 5),
                      Container(
                          height: 35,
                          width: 65,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(255, 44, 5, 111),),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromARGB(255, 44, 5, 111),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
