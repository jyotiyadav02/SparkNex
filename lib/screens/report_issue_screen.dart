import 'package:flutter/material.dart';

class ReportIssueScreen extends StatefulWidget {
  const ReportIssueScreen({super.key});

  @override
  State<ReportIssueScreen> createState() => _ReportIssueScreenState();
}

class _ReportIssueScreenState extends State<ReportIssueScreen> {
   String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Report Issue",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Help us improve SparkNex by reporting any problems or concerns:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  const SizedBox(height: 20),
          
                  const Text(
                    "Issue Details",
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
                              'Describe the issue you encountered', // Uncomment to add hint text
                        ),
                        maxLines: 3, // Adjust this based on your requirement
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
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Stack(
                          children: [
                            const Center(
                              child: Icon(
                                Icons.file_copy,
                                size: 20,
                                color: Color.fromARGB(255, 44, 5, 111),
                              ),
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
                                  child: const Icon(
                                    Icons.close,
                                    size: 10,
                                    color: Color.fromARGB(255, 44, 5, 111),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Stack(
                          children: [
                            const Center(
                              child: Icon(
                                Icons.file_copy,
                                size: 20,
                                color: Color.fromARGB(255, 44, 5, 111),
                              ),
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
                                    color: Color.fromARGB(255, 240, 235, 235),
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 10,
                                    color: Color.fromARGB(255, 44, 5, 111),
                                  ),
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
          const SizedBox(height: 10),
                   const Text(
                    "Category",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  
                   const Text(
                    "Select the category of the issue:",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                   
                    const SizedBox(height: 10),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Bug Report',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Bug Report',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Inappropriate Content',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Inappropriate Content',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Technical Glitch',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Technical Glitch',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
                  const SizedBox(height: 10),
                          ListTile(
                             visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Other (Specify)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Other (Specify)',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
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
                          // hintStyle: TextStyle(
                          //     color: Color.fromARGB(255, 44, 5, 111),
                          //     fontWeight: FontWeight.w300),
                          // hintText:
                          //     'Describe the issue you encountered', // Uncomment to add hint text
                        ),
                        maxLines: 2, // Adjust this based on your requirement
                      ),
                    ),
                  ),
          const SizedBox(height: 20),
                  
                   const Text(
                    "Severity",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                  
                   const Text(
                    "Select the severity of the issue:",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 44, 5, 111),
                    ),
                  ),
                   
                    const SizedBox(height: 10),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Low',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Low',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'Medium',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'Medium',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                       visualDensity: VisualDensity(vertical: -4), // Added this line
                      contentPadding: EdgeInsets.all(0),
                      title: const Text(
                        'High',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 44, 5, 111),
                        ),
                      ),
                      trailing: Radio<String>(
                        value: 'High',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
