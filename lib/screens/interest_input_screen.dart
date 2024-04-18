// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:sparknex/widgets/button.dart';

// import 'sparky_generation.dart';

// class InterestInput extends StatefulWidget {
//   const InterestInput({super.key});

//   @override
//   State<InterestInput> createState() => _InterestInputState();
// }

// class _InterestInputState extends State<InterestInput> {
//   @override
//   Widget build(BuildContext context) {
//     var list = [
//       "Technology",
//       "Gadgets",
//       "Art",
//       "Travel",
//       "Adventure",
//       "food",
//       "Fitness",
//       "Fashion",
//       "Music",
//       "Movies",
//       "Literature",
//       "books",
//       "Photography",
//       "Entertainment",
//       "DIY",
//       "Cars",
//       "Pets"
//     ];
//     return Scaffold(
//         body: Container(
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.end ,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             Image.asset("assets/images/splashimage.png",
//                 height: 80, width: 250),
//             const Text(
//               "Select Your Interests!",
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16,
//                 color: Color.fromARGB(255, 44, 5, 111),
//               ),
//             ),
//             const Text(
//               "Pick the topics you love for more engaging SparkNex chats.",
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16,
//                 color: Color.fromARGB(255, 44, 5, 111),
//               ),
//             ),
//             Expanded(
//               child: GridView.builder(
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.white,
//                       ),
//                       // color: Colors.white,
//                       child: Text(list[index],
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16,
//                             color: Color.fromARGB(255, 44, 5, 111),
//                           )),
//                     ),
//                   );
//                 },
//                 itemCount: list.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     // mainAxisSpacing: 11,
//                     // crossAxisSpacing: 3
//                     ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: const EdgeInsets.only(right:30.0),
//                 child: FloatingActionButton(
//                   backgroundColor: const Color.fromARGB(255, 44, 5, 111),
//                   onPressed: () {
//                   _showDialog(context);
//                   },
//                   child: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             // const SizedBox(height: 30),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: const EdgeInsets.all(28.0),
//                 child: ReusableButton(
//                     color: const Color.fromARGB(255, 44, 5, 111),
//                     borderColor: const Color.fromARGB(255, 44, 5, 111),
//                     icon: Icons.arrow_forward,
//                     width: 140,
//                     height: 50,
//                     onPressed: () {
//                         Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               const SparkyGenerationScreen()), // Assuming SparkyGenerationScreen is the name of your screen class
//                     );
//                     },
//                     text: const Text("Continue"),
//                     textColor: Colors.white,
//                     iconColor: Colors.white),
//               ),
//             )
//           ]),
//     ));
//   }
// }

// _showDialog(BuildContext context) {
//   showDialog(
//     context:context,
//     builder:(context) =>AlertDialog(
//       content: Container(
//         height: 100,
//         width: 470,
//         child: Column(
//           children: [
//             const Text(
//               "Add interest",
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               decoration: const InputDecoration(
//                 hintText: "Enter your interest",
//                 hintStyle: TextStyle(
//                   color: Color.fromARGB(255, 44, 5, 111),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ReusableButton(
//                 color: Colors.white,
//                 borderColor: Colors.grey,
//                 icon: Icons.arrow_forward,
//                 width: 50,
//                 height: 30,
//                 onPressed: () {},
//                 text: const Text("Add"),
//                 textColor: const Color.fromARGB(255, 44, 5, 111),
//                 iconColor: const Color.fromARGB(255, 44, 5, 111))
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sparknex/widgets/button.dart';

import 'sparky_generation.dart';

class InterestInput extends StatefulWidget {
  const InterestInput({Key? key}) : super(key: key);

  @override
  State<InterestInput> createState() => _InterestInputState();
}

class _InterestInputState extends State<InterestInput> {
  List<String> selectedInterests = [];
  var list = [
    "Technology",
    "Gadgets",
    "Art",
    "Travel",
    "Adventure",
    "Food",
    "Fitness",
    "Fashion",
    "Music",
    "Movies",
    "Literature",
    "Books",
    "Photography",
    "Entertainment",
    "DIY",
    "Cars",
    "Pets"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Image.asset("assets/images/splashimage.png",
                  height: 80, width: 250),
              const Text(
                "Select Your Interests!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              const Text(
                "Pick the topics you love for more engaging SparkNex chats.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
              Wrap(
                spacing: 8.0,
                children: list.map((interest) {
                  return ChoiceChip(
                    label: Text(
                      interest,
                      style: TextStyle(
                        color: selectedInterests.contains(interest)
                            ? Colors.white
                            : Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                    selected: selectedInterests.contains(interest),
                    onSelected: (bool selected) {
                      setState(() {
                        if (selected) {
                          selectedInterests.add(interest);
                        } else {
                          selectedInterests.remove(interest);
                        }
                      });
                    },
                    backgroundColor: selectedInterests.contains(interest)
                        ? const Color.fromARGB(255, 44, 5, 111)
                        : Colors.white,
                    selectedColor: const Color.fromARGB(255, 44, 5, 111),
                  );
                }).toList(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 44, 5, 111),
                    onPressed: () {
                      _showDialog(context);
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: ReusableButton(
                    color: const Color.fromARGB(255, 44, 5, 111),
                    borderColor: const Color.fromARGB(255, 44, 5, 111),
                    icon: Icons.arrow_forward,
                    width: 140,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SparkyGenerationScreen(),
                        ),
                      );
                    },
                    text: const Text("Continue"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      // String newInterest = '';

      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 44, 5, 111),
        content: Container(
          height: 200,
          width: 470,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Interest",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none, // Remove the default border
                      hintText: "Enter your interest",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 44, 5, 111),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ReusableButton(
                  color: Colors.white,
                  borderColor: const Color.fromARGB(255, 44, 5, 111),
                  icon: Icons.arrow_forward,
                  width: 120,
                  height: 50,
                  onPressed: () {},
                  text: const Text("Add",style:TextStyle(fontWeight: FontWeight.bold)),
                  textColor: const Color.fromARGB(255, 44, 5, 111),
                  iconColor: const Color.fromARGB(255, 44, 5, 111),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ).then((value) {
    if (value != null && value.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$value added as an interest'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  });
}
