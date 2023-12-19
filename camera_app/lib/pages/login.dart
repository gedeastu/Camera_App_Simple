import 'package:camera_app/components/email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 219, 219),
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
              Email(),
              
            ],
          ),
        ),
      ),
    );
  }
}