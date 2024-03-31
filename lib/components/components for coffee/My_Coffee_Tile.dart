import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Coffeemodel/Coffee.dart';
class MyCoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final VoidCallback onTap;
  const MyCoffeeTile({super.key, required this.coffee, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coffee.name,style: GoogleFonts.bebasNeue(fontSize: 30),),
                    Text('\u20B9 ${coffee.coffeePrice.toString()}',style: GoogleFonts.bebasNeue(fontSize: 20,color: Colors.black.withOpacity(0.4),
                    ),
                    )
                  ],
                )
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                    child: Image.asset(coffee.coffeeImagePath,fit: BoxFit.cover,height: 150,width: 150,)
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
