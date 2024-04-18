import 'package:flutter/material.dart';
import 'package:sparknex/screens/login_screen.dart';

import '../widgets/button.dart';
import 'interest_input_screen.dart';

class UserDetailsScreen extends StatefulWidget {
  UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _SignUpState();
}

class _SignUpState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Image.asset("assets/images/splashimage.png",
                height: 80, width: 200),
            const SizedBox(height: 20),
            Container(
                height: 290,
                width: 470,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Full Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors
                                            .grey), // Adjust border color as needed
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal:
                                              15,vertical:10), // Adjust vertical padding
                                      hintText: 'Enter your full name',
                                      border: InputBorder
                                          .none, // Remove the default border
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(4, 55, 111, 0.7),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Create Username",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors
                                            .grey), // Adjust border color as needed
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal:
                                              15,vertical:10), // Adjust vertical padding
                                      hintText: 'Enter username u want',
                                      border: InputBorder
                                          .none, // Remove the default border
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(4, 55, 111, 0.7),
                                      ),
                                      suffixIcon: Icon(Icons.visibility_off),
                                      suffixIconColor:
                                          Color.fromRGBO(4, 55, 111, 1),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Date of Birth",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors
                                            .grey), // Adjust border color as needed
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal:
                                              15,vertical:10), // Adjust vertical padding
                                      hintText: 'dd/mm/yyyy',
                                      border: InputBorder
                                          .none, // Remove the default border
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(height: 20),
            Container(
              width: 470,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Color.fromARGB(255, 44, 5, 111),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Select your gender",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                              color:
                                  Colors.grey), // Adjust border color as needed
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.male_rounded,
                              color: Color.fromARGB(255, 44, 5, 111),
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color.fromARGB(255, 44, 5, 111),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                              color:
                                  Colors.grey), // Adjust border color as needed
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.female_rounded,
                              color: Color.fromARGB(255, 44, 5, 111),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color.fromARGB(255, 44, 5, 111),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                              color:
                                  Colors.grey), // Adjust border color as needed
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.person_3_rounded,
                              color: Color.fromARGB(255, 44, 5, 111),
                            ),
                            Text(
                              "Other",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color.fromARGB(255, 44, 5, 111),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: ReusableButton(
                color: const Color.fromARGB(255, 44, 5, 111),
                // color:Colors.white,
                borderColor: const Color.fromARGB(255, 44, 5, 111),
                icon: Icons.arrow_forward,
                width: 150,
                height: 40,
                iconColor: Colors.white,
                textColor: Colors.white,
                onPressed: () {
                  // Navigate to KeyFeaturesScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InterestInput()),
                  );
                },
                text: const Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width:20),
          ],
        ),
      )),
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
