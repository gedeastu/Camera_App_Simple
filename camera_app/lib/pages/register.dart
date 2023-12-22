import 'package:camera_app/components/email.dart';
import 'package:camera_app/components/password.dart';
import 'package:camera_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(children: [

            //Back to login
            Container(
              margin: const EdgeInsets.only(left: 20.0,top: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text("Back to Login")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            const SizedBox(
                child: Column(
                  children: [
                    Icon(Icons.app_registration,size: 100,),
                    Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)
                  ],
                ),
              ),
            const SizedBox(height: 20,),
            const Text("Hello & Welcome to your destination",style: TextStyle(
              fontSize: 17.0,color: Color.fromARGB(255, 117, 117, 117)
            ),),
            const SizedBox(height: 20,),
            Email(controller: widget.emailController, hintText: "Full Name", obscureText: false, width: 350,),
            const SizedBox(height: 15,),
            Email(controller: widget.emailController, hintText: "Example@gmamil.com", obscureText: false, width: 350,),
            const SizedBox(height: 15,),
            Password(controller: widget.passwordController, hintText: "********",width: 350,),
            const SizedBox(height: 15,),
            Password(controller: widget.passwordController, hintText: "Confirm Password",width: 350,),
            const SizedBox(height: 15,),
            Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8.0)),
                child: TextButton(
                  child: const Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                        return Home();
                    },));
                  },
                ),
            ),
            const SizedBox(height: 20,),
            Text('or sign up with',style: TextStyle(color: Colors.grey.shade700),),
            const SizedBox(height: 15,),
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
              const SizedBox(height: 15,),
              Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("A Member?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  },style:  ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)), child: const Text("Login Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
                ],
              ),
              )
          ]),
        )
      ),
    );
  }
}