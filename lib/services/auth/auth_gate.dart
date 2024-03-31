import 'package:cafe_shop/pages/Home_Page.dart';
import 'package:cafe_shop/services/auth/Login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData)
            {
              return  const Home();
            }
          else
            {
              return const LoginOrRegister();
            }
        }
      ),
    );
  }
}