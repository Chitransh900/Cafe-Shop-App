import 'package:cafe_shop/services/auth/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/components for coffee/MyTextfield.dart';
class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void Login() async {
    final _authService = AuthService();
    try {
      // Attempt to sign in
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    } catch (e) {
      // If signing in fails, try to sign up
      try {
        await _authService.signUpWithEmailPassword(emailController.text, passwordController.text);
      } catch (e) {
        // If sign up also fails, show error
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_open_rounded,size: 100,),
              const SizedBox(height: 25,),
              const Text("The Cafe",style: TextStyle(fontSize: 16),),
              const SizedBox(height: 25,),
              MyTextfield(controller: emailController, hintText: "Email", obscureText: false,),
              const SizedBox(height: 25,),
              MyTextfield(controller: passwordController, hintText: "Password", obscureText: true),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed:Login ,
                child: Container(

                padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(color: Color(0xFF014D4E,),borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 18),))),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0))
              ),
              const SizedBox(height: 25,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a Member?"),
                  const SizedBox(width: 4 ,),
                  GestureDetector(
                    onTap: widget.onTap,
                      child: const Text("Register Now!",style: TextStyle(fontWeight: FontWeight.bold),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
