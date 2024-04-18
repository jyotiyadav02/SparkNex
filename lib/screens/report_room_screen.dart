import 'package:flutter/material.dart';

class ReportRoomScreen extends StatefulWidget {
  const ReportRoomScreen({super.key});

  @override
  State<ReportRoomScreen> createState() => _ReportRoomScreenState();
}

class _ReportRoomScreenState extends State<ReportRoomScreen> {
  String? selectedOption;
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Customize who can see your account profile:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    visualDensity: VisualDensity(vertical:-4.0,horizontal: -4.0),
                    contentPadding: EdgeInsets.all(0),
                    title: const Text(
                      'Harassment',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    trailing: Radio<String>(
                      value: 'Harassment',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(vertical:-4.0,horizontal: -4.0),
                    title: const Text(
                      'Inappropriate Content ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    trailing: Radio<String>(
                      value: 'Inappropriate Content ',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    visualDensity: VisualDensity(vertical:-4.0,horizontal: -4.0),
                    contentPadding: EdgeInsets.all(0),
                    title: const Text(
                      'Spam',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    trailing: Radio<String>(
                      value: 'Spam',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height:20),
                  Text(
                        "Additional Comments (Optional)",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                       SizedBox(height:10),
           Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // hintStyle: TextStyle(
                          //     color: Color.fromARGB(255, 44, 5, 111),
                          //     fontWeight: FontWeight.w300),
                          // hintText:
                          //     'Describe the issue you encountered', // Uncomment to add hint text
                        ),
                        maxLines: 5, // Adjust this based on your requirement
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 44, 5, 111),
                        )),
                    child: const Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 48,
                    width: 158,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 44, 5, 111),
                    ),
                    child: const Center(
                      child: Text(
                        "Report",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
