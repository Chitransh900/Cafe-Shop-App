import 'package:cafe_shop/BeveragesModel/BeveragesClasses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My_Bev_Tile extends StatelessWidget {
  final Beveragess beveragess;
  final VoidCallback onTap;
  const My_Bev_Tile({super.key, required this.onTap, required this.beveragess});

  @override
  Widget build( context) {
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
                        Text(beveragess.Bevname,style: GoogleFonts.bebasNeue(fontSize: 30),),
                        Text('\u20B9 ${beveragess.BevPrice.toString()}',style: GoogleFonts.bebasNeue(fontSize: 20,color: Colors.black.withOpacity(0.4),
                        ),
                        )
                      ],
                    )
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(beveragess.BevImagePath,fit: BoxFit.cover,height: 150,width: 150,)
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
