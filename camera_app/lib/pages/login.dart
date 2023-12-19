import 'package:camera_app/components/email.dart';
import 'package:camera_app/components/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.0,),
              //Logo
              SizedBox(
                child: Icon(Icons.lock,size: 100,),
              ),
              SizedBox(height: 50,),
              //Welcome back you've been missed!
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(fontSize: 17.0,color: Color.fromARGB(255, 117, 117, 117)),
              ),
              SizedBox(
                height: 25.0,
              ),
              Email(
                hintText: "example@gmail.com",
                obscureText: false,
                controller: widget.emailController,
              ),
              SizedBox(
                height: 15.0,
              ),
              Password(controller: widget.passwordController, hintText: "********",),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password",style: TextStyle(color: Colors.grey.shade700),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}