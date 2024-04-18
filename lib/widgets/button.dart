import 'package:flutter/material.dart';

// class ReusableButton extends StatefulWidget {
//   final Color color;
//   final Color borderColor;
//   final Color ? iconColor;
//   final Text text;
//   final Color textColor;
//   final IconData ? icon;
//   final double width;
//   final double height;
//   final VoidCallback ? onPressed;

//   static const double _borderRadius = 50.0;

//   const ReusableButton({
//     required this.color,
//     required this.borderColor,
//     required this.width,
//     required this.height,
//     required this.textColor,
//     this.onPressed,
//     required this.text,  this.iconColor,
//     this.icon,
//   });

//   @override
//   State<ReusableButton> createState() => _ReusableButtonState();
// }

// class _ReusableButtonState extends State<ReusableButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:widget.height,
//       width:widget.width,
//       child: ElevatedButton(
//         onPressed: widget.onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: widget.color,
//           side: BorderSide(color: widget.borderColor ?? Colors.transparent),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(ReusableButton._borderRadius),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             widget.text, // Extract the Text widget from widget.text
//             SizedBox(width: 5), // Add spacing between text and icon
//             if (widget.icon != null) Icon(widget.icon,color: widget.iconColor),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ReusableButton extends StatefulWidget {
  final Color color;
  final Color borderColor;
  final Color ? iconColor;
  final Text text;
  final Color textColor; // Removed this as it's not needed anymore
  final IconData ?icon;
  final double width;
  final double height;
  final VoidCallback ? onPressed;

  static const double _borderRadius = 50.0;

  const ReusableButton({
    required this.color,
    required this.borderColor,
     this.icon,
    required this.width,
    required this.height,
     this.onPressed,
    required this.text,
    required this.textColor,
    this.iconColor,
  });

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
          side: BorderSide(color: widget.borderColor ?? Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ReusableButton._borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.text.data!, // Extract text data from widget.text
              style: TextStyle(
                color: widget.textColor, // Use the provided text color
                fontSize: widget.text.style?.fontSize ?? 14, // Use the provided font size or default to 14
                fontWeight: widget.text.style?.fontWeight ?? FontWeight.normal, // Use the provided font weight or default to normal
              ),
            ),
            SizedBox(width: 5), // Add spacing between text and icon
            if (widget.icon != null) Icon(widget.icon, color: widget.iconColor),
          ],
        ),
      ),
    );
  }
}
