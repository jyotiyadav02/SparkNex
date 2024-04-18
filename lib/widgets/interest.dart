import 'package:flutter/material.dart';

class InterestsButton extends StatefulWidget {
  final String text;
  const InterestsButton({super.key, required this.text});

  @override
  State<InterestsButton> createState() => _InterestsButtonState();
}

class _InterestsButtonState extends State<InterestsButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: const Color.fromARGB(255, 44, 5, 111),
          ),
        ),
      ),
    );
  }
}
