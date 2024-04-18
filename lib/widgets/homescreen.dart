import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String? text1;
  final String text2;
  final String? text3;
  const CustomContainer(
      {super.key, this.text1, required this.text2, this.text3});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 398,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 44, 5, 111),
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.text1!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
                Text(
                  widget.text2!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color.fromARGB(255, 44, 5, 111),
                  ),
                ),
              ],
            ),
            Text(
              widget.text3!,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 44, 5, 111),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
