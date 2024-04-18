// // import 'package:flutter/material.dart';

// // class homeScreenWidget extends StatefulWidget {
// //   final String name;
// //   final String description;
// //   final String ? duration;
// //   final String image;
// //   const homeScreenWidget(
// //       {super.key,
// //       required this.name,
// //       required this.description,
// //        required this.image, this.duration});

// //   @override
// //   State<homeScreenWidget> createState() => _homeScreenWidgetState();
// // }

// // class _homeScreenWidgetState extends State<homeScreenWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //         child: ListTile(
// //       leading: ClipRRect(
// //          borderRadius: BorderRadius.circular(8),
// //         child: Image.asset(widget.image)),
// //       title: Text(widget.name),
// //       subtitle: Text(widget.description),
// //       trailing: Text(widget.duration??" "),
// //     ));
// //   }
// // }


// import 'package:flutter/material.dart';

// class homeScreenWidget extends StatefulWidget {
//   final String name;
//   final String description;
//   final String? duration;
//   final String image;
//   final Color containerColor;
//   final Color nameColor;
//   final double nameFontSize;
//   final FontWeight nameFontWeight;
//   final Color descriptionColor;
//   final double descriptionFontSize;
//   final FontWeight descriptionFontWeight;
//   final Color durationColor;
//   final double durationFontSize;
//   final FontWeight durationFontWeight;

//   const homeScreenWidget({
//     Key? key,
//     required this.name,
//     required this.description,
//     required this.image,
//     this.duration,
//     this.containerColor = Colors.grey, // Default container color
//     this.nameColor = Colors.black,
//     this.nameFontSize = 16,
//     this.nameFontWeight = FontWeight.normal,
//     this.descriptionColor = Colors.black,
//     this.descriptionFontSize = 14,
//     this.descriptionFontWeight = FontWeight.normal,
//     this.durationColor = Colors.black,
//     this.durationFontSize = 14,
//     this.durationFontWeight = FontWeight.normal,
//   }) : super(key: key);

//   @override
//   State<homeScreenWidget> createState() => _homeScreenWidgetState();
// }

// class _homeScreenWidgetState extends State<homeScreenWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: widget.containerColor, // Use dynamic container color
//       ),
//       child: InkWell(
//         onTap:(){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>))
//         },
//         child: ListTile(
//           leading: ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.asset(widget.image),
//           ),
//           title: Text(
//             widget.name,
//             style: TextStyle(
//               color: widget.nameColor,
//               fontSize: widget.nameFontSize,
//               fontWeight: widget.nameFontWeight,
//             ),
//           ),
//           subtitle: Text(
//             widget.description,
//             style: TextStyle(
//               color: widget.descriptionColor,
//               fontSize: widget.descriptionFontSize,
//               fontWeight: widget.descriptionFontWeight,
//             ),
//           ),
//           trailing: Text(
//             widget.duration ?? "",
//             style: TextStyle(
//               color: widget.durationColor,
//               fontSize: widget.durationFontSize,
//               fontWeight: widget.durationFontWeight,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class homeScreenWidget extends StatefulWidget {
  final String name;
  final String description;
  final String? duration;
  final String image;
  final Color containerColor;
  final Color nameColor;
  final double nameFontSize;
  final FontWeight nameFontWeight;
  final Color descriptionColor;
  final double descriptionFontSize;
  final FontWeight descriptionFontWeight;
  final Color durationColor;
  final double durationFontSize;
  final FontWeight durationFontWeight;


  const homeScreenWidget({
    Key? key,
    required this.name,
    required this.description,
    required this.image,

    this.duration,
    this.containerColor =  const Color.fromARGB(255, 44, 5, 111),
    this.nameColor =  const Color.fromARGB(255, 44, 5, 111),
    this.nameFontSize = 16,
    this.nameFontWeight = FontWeight.normal,
    this.descriptionColor =  const Color.fromARGB(255, 44, 5, 111),
    this.descriptionFontSize = 12,
    this.descriptionFontWeight = FontWeight.w400,
    this.durationColor = Colors.black,
    this.durationFontSize = 10,
    this.durationFontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  State<homeScreenWidget> createState() => _homeScreenWidgetState();
}

class _homeScreenWidgetState extends State<homeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(widget.image),
      ),
      title: Text(
        widget.name,
        style: TextStyle(
          color: widget.nameColor,
          fontSize: widget.nameFontSize,
          fontWeight: widget.nameFontWeight,
        ),
      ),
      subtitle: Text(
        widget.description,
        style: TextStyle(
          color: widget.descriptionColor,
          fontSize: widget.descriptionFontSize,
          fontWeight: widget.descriptionFontWeight,
        ),
      ),
      trailing: Text(
        widget.duration ?? "",
        style: TextStyle(
          color: widget.durationColor,
          fontSize: widget.durationFontSize,
          fontWeight: widget.durationFontWeight,
        ),
      ),
    );
  }
}

