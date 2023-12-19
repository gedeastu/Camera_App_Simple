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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 219, 219),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0,),
              //Logo
              const SizedBox(
                child: Icon(Icons.lock,size: 100,),
              ),
              const SizedBox(height: 50,),
              //Welcome back you've been missed!
              const Text(
                "Welcome back you've been missed!",
                style: TextStyle(fontSize: 17.0,color: Color.fromARGB(255, 117, 117, 117)),
              ),
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: TextField(
                onTapOutside: (event) {
                  
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}