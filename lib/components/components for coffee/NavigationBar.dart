// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class NavigationBars extends StatelessWidget {
  void Function(int)? onTap;
 NavigationBars({super.key,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: GNav(
        onTabChange: (value) => onTap!(value),

        tabBackgroundColor: Color(0xFF014D4E),
        activeColor: Colors.white,
        mainAxisAlignment:MainAxisAlignment.center,
          tabBorderRadius: 24,
          tabs: [
        GButton(icon: Icons.coffee,text: "Coffee",gap: 5,style: GnavStyle.google,),
        GButton(icon: Icons.fastfood,text: "Beverages",gap: 5,style: GnavStyle.google,),
      ]
      ),
    );
  }
}
