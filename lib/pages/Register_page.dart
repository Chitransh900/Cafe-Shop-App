import "package:cafe_shop/services/auth/auth_service.dart";
import "package:flutter/material.dart";

import "../components/components for coffee/MyTextfield.dart";

class Register_page extends StatefulWidget {
 final void Function()? onTap;
  const Register_page({super.key, this.onTap});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController = TextEditingController();

  void register()async
  {
    final _authService = AuthService();
    if(passwordController.text == confirmpasswordController.text)
      {
        try
            {
              await _authService.signUpWithEmailPassword(emailController.text, passwordController.text);

            }
            catch (e)
    {
      showDialog(context: context, builder: (context)
      =>AlertDialog(
        title: Text(e.toString()),
      )
      );
    }
      }
    else
    {
      showDialog(context: context, builder: (context)
      => AlertDialog(
        title: Text("password dont match!"),
      )
      );
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
              Icon(Icons.lock_open_rounded,size: 100,),
              SizedBox(height: 25,),
              Text("The Cafe",style: TextStyle(fontSize: 16),),
              SizedBox(height: 25,),
              MyTextfield(controller: emailController, hintText: "Email", obscureText: false,),
              SizedBox(height: 25,),
              MyTextfield(controller: passwordController, hintText: "Password", obscureText: true),
              SizedBox(height: 25,),
              MyTextfield(controller: confirmpasswordController, hintText: "Confirm Password", obscureText: true),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: register, child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(color: Color(0xFF014D4E,),borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 18),))),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0))
              ),
              SizedBox(height: 25,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an account"),
                  const SizedBox(width: 4 ,),
                  GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Login now",style: TextStyle(fontWeight: FontWeight.bold),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
