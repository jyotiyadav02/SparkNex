// import 'package:flutter/material.dart';

// class FAQPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "FAQs",
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 16,
//             color: Color.fromARGB(255, 44, 5, 111),
//           ),
//         ),
//       ),
//       body:
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment:MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           const Text(
//               "Control and manage app permissions for SparkNex:",
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//                 color: Color.fromARGB(255, 44, 5, 111),
//               ),
//             ),
//             const SizedBox(height:15),
//          ListView(
//           padding: EdgeInsets.all(20.0),
//           children: [
//             FAQItem(
//               question: 'What is Lorem Ipsum?',
//               answer:
//                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
//             ),
//             SizedBox(height: 10),
//             FAQItem(
//               question: 'Why do we use it?',
//               answer:
//                   'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
//             ),
//             SizedBox(height: 10),
//             FAQItem(
//               question: 'Where does it come from?',
//               answer:
//                   'Contrary to popular belief, Lorem Ipsum is not simply random text.',
//             ),
//             SizedBox(height: 10),
//             FAQItem(
//               question: 'Where can I get some?',
//               answer:
//                   'There are many variations of passages of Lorem Ipsum available.',
//             ),
//           ],
//         ),
//         ],),
//       )
      
//     );
//   }
// }
// class FAQItem extends StatefulWidget {
//   final String question;
//   final String answer;

//   FAQItem({required this.question, required this.answer});

//   @override
//   _FAQItemState createState() => _FAQItemState();
// }

// class _FAQItemState extends State<FAQItem> {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Color.fromARGB(255, 44, 5, 111)),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             child: Column(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _isExpanded = !_isExpanded;
//                     });
//                   },
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(40),
//                     child: Container(
//                       padding: EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 44, 5, 111),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             widget.question,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Icon(
//                             _isExpanded
//                                 ? Icons.arrow_circle_up_rounded
//                                 : Icons.arrow_drop_down_circle_rounded,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 AnimatedCrossFade(
//                   duration: Duration(milliseconds: 300),
//                   firstChild: Container(),
//                   secondChild: Container(
//                     padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadiusDirectional.only(
//                             bottomEnd: Radius.circular(40),
//                             bottomStart: Radius.circular(40))),
//                     child: Text(
//                       widget.answer,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 44, 5, 111),
//                       ),
//                     ),
//                   ),
//                   crossFadeState: _isExpanded
//                       ? CrossFadeState.showSecond
//                       : CrossFadeState.showFirst,
//                 ),
//               ],
//             )),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FAQs",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Explore answers to common questions:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  FAQItem(
                    question: 'How can I customize my Sparky avatar?',
                    answer:
                        'To customize your Sparky avatar, go to the Profile section and use the "Customize Sparky" feature.',
                  ),
                  SizedBox(height: 5),
                  FAQItem(
                    question: 'Is SparkNex available in multiple languages?',
                    answer:
                        'Yes, SparkNex supports conversations in 81 languages. You can change your language preference in the Settings.',
                  ),
                  SizedBox(height: 5),
                  FAQItem(
                    question: 'Can I block or report users who engage in inappropriate behavior?',
                    answer:
                        "Yes, you can block users or report inappropriate behavior through the user's profile or using the 'Report' feature.",
                  ),
                  SizedBox(height: 5),
                  FAQItem(
                    question: 'What safety features are in place for minors?',
                    answer:
                        'SparkNex includes parental controls and age-based content restrictions to create a safer environment for minors.',
                  ),
                       SizedBox(height: 5),
                  FAQItem(
                    question: 'How can I recover my account if I forget my password?',
                    answer:
                        'If you forget your password, you can use the "Forgot Password" link on the login screen to reset it.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(255, 44, 5, 111)),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible( // Wrap with Flexible to allow multi-line text
                      child: Text(
                        widget.question,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 2, // Set maxLines to limit text to 2 lines
                        overflow: TextOverflow.ellipsis, // Handle overflow by showing ellipsis
                      ),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.arrow_circle_up_rounded
                          : Icons.arrow_drop_down_circle_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: Duration(milliseconds: 300),
            firstChild: Container(),
            secondChild: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(40),
                      bottomStart: Radius.circular(40))),
              child: Text(
                widget.answer,
                style: TextStyle(
                  color: Color.fromARGB(255, 44, 5, 111),
                ),
              ),
            ),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }
}

// class FAQItem extends StatefulWidget {
//   final String question;
//   final String answer;

//   FAQItem({required this.question, required this.answer});

//   @override
//   _FAQItemState createState() => _FAQItemState();
// }

// class _FAQItemState extends State<FAQItem> {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(color: Color.fromARGB(255, 44, 5, 111)),
//         borderRadius: BorderRadius.circular(40),
//       ),
//       child: Column(
//         children: [
//           InkWell(
//             onTap: () {
//               setState(() {
//                 _isExpanded = !_isExpanded;
//               });
//             },
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(40),
//               child: Container(
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 44, 5, 111),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       widget.question,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Icon(
//                       _isExpanded
//                           ? Icons.arrow_circle_up_rounded
//                           : Icons.arrow_drop_down_circle_rounded,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           AnimatedCrossFade(
//             duration: Duration(milliseconds: 300),
//             firstChild: Container(),
//             secondChild: Container(
//               padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadiusDirectional.only(
//                       bottomEnd: Radius.circular(40),
//                       bottomStart: Radius.circular(40))),
//               child: Text(
//                 widget.answer,
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 44, 5, 111),
//                 ),
//               ),
//             ),
//             crossFadeState: _isExpanded
//                 ? CrossFadeState.showSecond
//                 : CrossFadeState.showFirst,
//           ),
//         ],
//       ),
//     );
//   }
// }
