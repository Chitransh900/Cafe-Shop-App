import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'lib/images/images/google.png',
            scale: 8,
          ),
        ),
        const SizedBox(width: 10,), // Optional spacing between images
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'lib/images/images/apple.png',
            scale: 15,
            width: 50.0,
          ),
        ),
        const SizedBox(width: 10), // Optional spacing between images
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'lib/images/images/microsoft.png',
            scale: 15,
          ),
        ),
      ],
    );
  }
}
