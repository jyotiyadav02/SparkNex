import 'package:flutter/material.dart';

class ContactSupportScreen extends StatefulWidget {
  const ContactSupportScreen({Key? key}) : super(key: key);

  @override
  State<ContactSupportScreen> createState() => _ContactSupportScreenState();
}

class _ContactSupportScreenState extends State<ContactSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Support",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Need assistance? ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),

              
                 const Text(
                  "Our support team is here to help:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
  const SizedBox(height: 20),
                const Text(
                  "Enter your email address:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                // Description Field
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 44, 5, 111),
                            fontWeight: FontWeight.w300),
                        hintText:
                            'Your Email Address', // Uncomment to add hint text
                      ),
                      maxLines: 2, // Adjust this based on your requirement
                    ),
                  ),
                ),

                const SizedBox(height: 20),
           const Text(
                  "Describe your issue or question:",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                const SizedBox(height: 10),
                // Description Field
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 44, 5, 111),
                            fontWeight: FontWeight.w300),
                        hintText:
                            'Type your message here', // Uncomment to add hint text
                      ),
                      maxLines: 4, // Adjust this based on your requirement
                    ),
                  ),
                ),

const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.attach_file,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                    Text(
                      "Attach File (Optional)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 56,
                      height:56,
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Grey background color
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Stack(
                        children: [
                          const Center(
                            child: Icon(Icons.file_copy, size: 20,color: Color.fromARGB(255, 44, 5, 111),),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: InkWell(
                              onTap: () {
                                // Handle close action
                              },
                              child: Container(
                               
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 246, 241, 241),
                                ),
                                child: const Icon(Icons.close, size: 10,color: Color.fromARGB(255, 44, 5, 111),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width:10),
                               Container(
                  width: 56,
                  height:56,
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Stack(
                    children: [
                      const Center(
                        child: Icon(Icons.file_copy, size: 20,color: Color.fromARGB(255, 44, 5, 111),),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: InkWell(
                          onTap: () {
                            // Handle close action
                          },
                          child: Container(
                           
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 246, 241, 241),
                            ),
                            child: const Icon(Icons.close, size: 10,color: Color.fromARGB(255, 44, 5, 111),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  ],
                ),
              ],
            ),
            
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
                    "Submit",
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
