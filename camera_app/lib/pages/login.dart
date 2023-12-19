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

              //Email
              Email(
                hintText: "example@gmail.com",
                obscureText: false,
                controller: widget.emailController,
              ),

              SizedBox(
                height: 15.0,
              ),

              //Password
              Password(controller: widget.passwordController, hintText: "********",),
              SizedBox(
                height: 15.0,
              ),

              //Forgot Password
              Container(
                margin: EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password",style: TextStyle(color: Colors.grey.shade700),)
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //Sign In Button
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                child: TextButton(
                  child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                  onPressed: (){

                  },
                ),
              ),

              SizedBox(height: 60.0,),

              Text('or continue with',style: TextStyle(color: Colors.grey.shade700),),

              SizedBox(
                height: 60.0,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: SvgPicture.asset('assets/google.svg'),
                  ),
                  SizedBox(width: 20,),
                   Container(
                    width: 60,
                    height: 60,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: SvgPicture.asset('assets/bi_apple.svg'),
                  ),
                ]),
              ),

              SizedBox(height: 60.0,),

              RichText(
                text: TextSpan(
                style: TextStyle(color: Colors.grey.shade700),
                children:<TextSpan>[
                  TextSpan(text: "Not a member? "),
                  TextSpan(text: "Register now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}