import 'package:flutter/material.dart';
import 'package:sparknex/screens/interest_input_screen.dart';
import 'package:sparknex/screens/sparky_generation.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text(
              "Customize Sparky",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SparkyGenerationScreen()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customize Sparky ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
            // const SizedBox(height: 20),
            const Text(
              "Edit Username",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                 border: Border.all(
                  width:2,
                    color: Color.fromRGBO(4, 55, 111, 0.7),
                    ), // Adjust borde
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'jyoti@21',
                    border: InputBorder.none, // Remove the default border
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(4, 55, 111, 0.7),
                    ),
                    suffixIcon: Icon(Icons.edit,
                        color: Color.fromARGB(255, 44, 5, 111)),
                  ),
                  maxLines: 1,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Edit Name",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                 border: Border.all(
                  width:2,
                    color: Color.fromRGBO(4, 55, 111, 0.7),
                    ), // Adjust borde
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    
                    hintText: 'Jyoti yadav',
                    border: InputBorder.none, // Remove the default border
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(4, 55, 111, 0.7),
                    ),
                    suffixIcon: Icon(Icons.edit,
                        color: Color.fromARGB(255, 44, 5, 111)),
                  ),
                  maxLines: 1,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Edit Date of Birth",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  width:2,
                    color: Color.fromRGBO(4, 55, 111, 0.7),
                    ), // Adjust border color as needed
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10), // Adjust vertical padding
                  hintText: '10/10/2002',
                  border: InputBorder.none, // Remove the default border
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(4, 55, 111, 0.7),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      _showCalendarDialog(context);
                    },
                    child: const Icon(
                      Icons.calendar_month_rounded,
                      color: Color.fromRGBO(4, 55, 111, 1),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Manage Interest",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InterestInput()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 0, // Remove elevation to match your design
                backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Manage or Add New Interests",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ),
        ],),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 38,
                width: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 44, 5, 111),
                ),
                child: const Center(
                  child: Text(
                    "Save Changes",
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

void _showCalendarDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    onDateChanged: (DateTime selectedDate) {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Close",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
