import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_Page.dart';
class RecieptPage extends StatelessWidget {
  const RecieptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: EdgeInsets.only(left: 25,right: 25,bottom: 25,),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Thank you for your order!",style: GoogleFonts.bebasNeue(fontSize:25),),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              ),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0)),
                  child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(color: Color(0xFF014D4E,),borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Keep Shoping",style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 25,)
                          ),
                          SizedBox(width: 15,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                      )
                  )
              ),
            ],
          ),
      ),

      ),
    );
  }
}
