import 'package:flutter/material.dart';
import 'package:sparknex/screens/login_screen.dart';

import 'user_details_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Image.asset("assets/images/splashimage.png",
                  height: 80, width: 200),
              const SizedBox(height: 20),
              const Text(
                "Welcome back to SparkNex!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              // const SizedBox(height: 10),
              const Text(
                "Log in to continue your sparkling conversations",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                  height: 210,
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
                                    "Email Address",
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
                                                15), // Adjust vertical padding
                                        // SizedBox(height:5),
                                       
                                        hintText:
                                            'Enter your registered email address',
                                        border: InputBorder
                                            .none, // Remove the default border
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(4, 55, 111, 0.7),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  
                                  const Text(
                                    "Password",
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
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal:
                                                15, vertical:10), // Adjust vertical padding
                                        hintText: 'Enter your password',
                                        border: InputBorder
                                            .none, // Remove the default border
                                        hintStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(4, 55, 111, 0.7),
                                        ),
                                        suffixIcon: Icon(Icons.visibility_off),
                                        suffixIconColor:
                                            Color.fromRGBO(4, 55, 111, 1),
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
              // const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color:Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                ),
              ),
const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetailsScreen()),
                  );
                },
                child: const Center(
                  child: Text(
                    "Login!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email_rounded,
                        size: 40, color: Colors.amberAccent),
                    Icon(Icons.facebook_rounded,
                        size: 40, color: Colors.blueAccent),
                  ]),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account? ",
                    style: TextStyle(
                      color: Color.fromRGBO(4, 55, 111, 0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Register here",
                    style: TextStyle(
                      color: Color.fromRGBO(4, 55, 111, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ]),
      )),
    );
  }
}
