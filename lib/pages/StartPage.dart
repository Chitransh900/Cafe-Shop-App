import 'package:cafe_shop/services/auth/auth_gate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The Cafe",style: GoogleFonts.bebasNeue(fontSize:50,color: Colors.black),),
            Lottie.asset("lib/images/Animation.json",
              repeat: true,
              height: 270,
              fit: BoxFit.cover
            ),
            ElevatedButton(onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthGate()),
            ),
              child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(color: Color(0xFF014D4E,),borderRadius: BorderRadius.circular(8),
                  ),
                  child:  Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Started",style: GoogleFonts.bebasNeue(color: Colors.white,fontSize: 25,)
                      ),
                      SizedBox(width: 15,),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                  ),
                  )
                  ),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white),
              elevation: MaterialStatePropertyAll(0))
              ),
          ],
        ),
      ) ,
    );
  }
}
