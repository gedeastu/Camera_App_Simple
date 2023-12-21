import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            
          },
          child: Icon(Icons.menu,size: 25,),
        ),
        backgroundColor: Colors.grey.shade300,
        actions: [
          Row(
            children: [
              Icon(Icons.logout),
              SizedBox(width: 5,),
              Text("Log out")
            ],
          )
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: MaterialButton(
                    onPressed: (){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Take to the Camera",style: TextStyle(color:Colors.white),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Browse in your gallery",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ),
    );
  }
}