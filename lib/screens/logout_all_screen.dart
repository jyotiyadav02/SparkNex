import 'package:flutter/material.dart';

class LogoutAllDevicesScreen extends StatefulWidget {
  const LogoutAllDevicesScreen({super.key});

  @override
  State<LogoutAllDevicesScreen> createState() => _LogoutAllDevicesScreenState();
}

class _LogoutAllDevicesScreenState extends State<LogoutAllDevicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Logout from All Devices",
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Column(
             mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
                "Before proceeding, please consider the following:",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              SizedBox(height:5),
                 Text(
                "⚠️ Logging out from all devices will require you to log in again.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
                Text(
                "Are you sure you want to proceed?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
        
        
        ],),
    Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [            Text(
                "Note: Logging out from all devices will sign you out on all active sessions. You will need to log in again to access your account.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
                          SizedBox(height: 10),
 
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 38,
                    width: 398,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 44, 5, 111),
                    ),
                    child: const Center(
                      child: Text(
                        "Logout from All Devices",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],)
        
        ],),
      )
    );
  }
}
