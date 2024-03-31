import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const MyDrawerTile({super.key, required this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text(
          text,style: const TextStyle(color: Colors.black),
        ),
        leading: Icon(icon,color: Colors.black,),
        onTap: onTap,
      ),
    );
  }
}