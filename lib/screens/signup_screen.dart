import 'package:flutter/material.dart';
import 'package:sparknex/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                "Welcome to SparkNex! Let's get started.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              // const SizedBox(height: 10),
              const Text(
                "Create your account to spark brilliant conversations.",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
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
                          // const Text(
                          //   "Email Address",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w600,
                          //     fontSize: 15,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.white,
                          //     border: Border.all(
                          //         color: Colors
                          //             .grey), // Adjust border color as needed
                          //   ),
                          //   child: TextFormField(
                          //     decoration: const InputDecoration(
                          //       contentPadding: EdgeInsets.symmetric(
                          //           horizontal: 15), // Adjust vertical padding
                          //       hintText: 'Enter your email',
                          //       border: InputBorder
                          //           .none, // Remove the default border
                          //       hintStyle: TextStyle(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.w400,
                          //         color: Color.fromRGBO(4, 55, 111, 0.7),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // const Text(
                          //   "Create Password",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w600,
                          //     fontSize: 15,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.white,
                          //     border: Border.all(
                          //         color: Colors
                          //             .grey), // Adjust border color as needed
                          //   ),
                          //   child: TextFormField(
                          //     decoration: const InputDecoration(
                          //       contentPadding: EdgeInsets.symmetric(
                          //           horizontal: 20), // Adjust vertical padding
                          //       hintText: 'Enter your password',
                          //       border: InputBorder
                          //           .none, // Remove the default border
                          //       hintStyle: TextStyle(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.w400,
                          //         color: Color.fromRGBO(4, 55, 111, 0.7),
                          //       ),
                          //       suffixIcon: Icon(Icons.visibility_off),
                          //       suffixIconColor:Color.fromRGBO(4, 55, 111, 1),
                          //     ),
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          // const Text(
                          //   "Confirm Password",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w500,
                          //     fontSize: 15,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
                          // // TextFormField(
                          // //   decoration: const InputDecoration(
                          // //     hintText: "Confirm password",
                          // //     fillColor: Colors.white,
                          // //     //  suffixIcon: Icon(Icons.visibility),
                          // //     hintStyle: TextStyle(
                          // //       fontSize: 16,
                          // //       fontWeight: FontWeight.w400,
                          // //       color: Color.fromRGBO(4, 55, 111, 0.7),
                          // //     ),
                          // //   ),
                          // // ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10),
                          //     color: Colors.white,
                          //     border: Border.all(
                          //         color: Colors
                          //             .grey), // Adjust border color as needed
                          //   ),
                          //   child: TextFormField(
                          //     decoration: const InputDecoration(
                          //       contentPadding: EdgeInsets.symmetric(
                          //           horizontal: 15), // Adjust vertical padding
                          //       hintText: 'Confirm password',
                          //       border: InputBorder
                          //           .none, // Remove the default border
                          //       hintStyle: TextStyle(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.w400,
                          //         color: Color.fromRGBO(4, 55, 111, 0.7),
                          //       ),
                          //     ),
                          //   ),
                          // )

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
                                        hintText: 'Enter your email',
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
                                    "Create Password",
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
                                                20), // Adjust vertical padding
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
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Confirm Password",
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
                                                15), // Adjust vertical padding
                                        hintText: 'Confirm password',
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Center(
                  child: Text(
                    "Register Now!",
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
                    "Already have an account? ",
                    style: TextStyle(
                      color: Color.fromRGBO(4, 55, 111, 0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Login here",
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
