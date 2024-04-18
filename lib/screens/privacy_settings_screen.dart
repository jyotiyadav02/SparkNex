import 'package:flutter/material.dart';
import 'package:sparknex/screens/account_visibility_screen.dart';
import 'package:sparknex/screens/app_permission_screen.dart';
import 'package:sparknex/screens/blocked_user_screen.dart';
import 'package:sparknex/screens/parental_controls_screen.dart';
import 'package:sparknex/screens/profile_visibility_screen.dart';
import 'package:sparknex/screens/user_interaction_controls.dart';

class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({super.key});

  @override
  State<PrivacySettingsScreen> createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  @override  bool locationsEnabled = false;
  bool activityEnabled = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Privacy Settings",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(
            "Customize your privacy preferences with the options below:",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromARGB(255, 44, 5, 111),
            ),
          ),
        
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>AccountVisibilityScreen()));
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
                      "Account Visibility",
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
          
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>ProfileVisibilityScreen()));
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
                      "Profile Visibility",
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
                       const SizedBox(height: 10),

                        const Text(
          "Activity Status",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),

         const SizedBox(height: 10),

                          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Text(
                  "Allow SparkNex to access the camera",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: activityEnabled,
                  onChanged: (value) {
                    setState(() {
                    activityEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
        const SizedBox(height:10),
              ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>BlockedUserScreen()));
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
                      "Blocked Users",
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
                       const SizedBox(height: 10),
                                      const Text(
          "Location Sharing",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
         const SizedBox(height: 10),

                          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Text(
                  "Allow SparkNex to access the camera",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                // const SizedBox(width: 20),
                Switch(
                  value: locationsEnabled,
                  onChanged: (value) {
                    setState(() {
                    locationsEnabled = value;
                    });
                  },
                  activeColor: Colors.white, // Customize the active color
                  activeTrackColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the active track color
                  inactiveThumbColor: const Color.fromARGB(
                      255, 44, 5, 111), // Customize the inactive thumb color
                  inactiveTrackColor: Colors.white
                      .withOpacity(0.5), // Customize the inactive track color
                ),
              ],
            ),
              ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>AppPermissionsScreen()));
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
                      "App Permissions",
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
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>UserInteractionControls()));
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
                      "User Interaction Controls",
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
                       const SizedBox(height: 10),
              ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (Context)=>ParentalControlsScreen()));
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
                      "Parental Controls",
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


        ],),
      )
    );

  }
}
