import 'package:camera_app/components/email.dart';
import 'package:camera_app/components/password.dart';
import 'package:camera_app/pages/home.dart';
import 'package:camera_app/pages/register.dart';
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
  bool? _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 45.0,),

              //Logo
              const SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.recycling_sharp,size: 100,),
                    Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)
                  ],
                ),
              ),

              const SizedBox(height: 50,),

              //Welcome back you've been missed!
              const Text(
                "Welcome back you've been missed!",
                style: TextStyle(fontSize: 17.0,color: Color.fromARGB(255, 117, 117, 117)),
              ),
              
              const SizedBox(
                height: 25.0,
              ),

              //Email
              Email(
                hintText: "example@gmail.com",
                obscureText: false,
                controller: widget.emailController,
                width: 350,
              ),

              const SizedBox(
                height: 15.0,
              ),

              //Password
              Password(controller: widget.passwordController, hintText: "********",width: 350,),
              const SizedBox(
                height: 15.0,
              ),

              //Forgot Password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: _rememberMe, onChanged: (value) {
                      setState(() {
                        _rememberMe = value;
                      });
                    },activeColor: Colors.black,),
                    Text("Forgot Password",style: TextStyle(color: Colors.grey.shade700),)
                  ],
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //Sign In Button
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                child: TextButton(
                  child: const Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                  onPressed: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                      return const Home();
                    },));
                  },
                ),
              ),

              const SizedBox(height: 50.0,),

              Text('or continue with',style: TextStyle(color: Colors.grey.shade700),),

              const SizedBox(
                height: 50.0,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  IconButton(
                  onPressed: (){

                  },
                  icon: 
                    Container(
                      width: 65,
                      height: 65,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: SvgPicture.asset('assets/google.svg'),
                    )
                  ),
                  const SizedBox(width: 10,),
                  IconButton(
                  onPressed: (){

                  },
                  icon: 
                    Container(
                      width: 65,
                      height: 65,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: SvgPicture.asset('assets/bi_apple.svg'),
                    )
                  ),
                ]),
              ),

              const SizedBox(height: 30.0,),

              Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Not a Member?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    },));
                  },style:  ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)), child: const Text("Register Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
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