import 'dart:io';

import 'package:camera_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:image_picker_ios/image_picker_ios.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File ? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){},
          child: const Icon(Icons.menu,size: 25,),
        ),
        backgroundColor: Colors.grey.shade300,
        actions: [
          MaterialButton(
            onPressed: () {
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                return LoginPage();
            },));
            },
            child: const Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 5,),
                Text("Log out")
              ],
            ),
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
                      _pickImageFromCamera();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Take to the Camera",style: TextStyle(color:Colors.white),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 2.0
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: _selectedImage != null ? Image.file(File(_selectedImage!.path),fit: BoxFit.cover,) : Text("Please Selected or Take an Image"),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 220,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      _pickImageFromGallery();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Browse in your gallery",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
            ],
          ),
        )
      ),
    );
}

  Future _pickImageFromGallery() async{
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    //final returnedImage = await ImagePickerIOS().pickImage(source: ImageSource.gallery);
    if(returnedImage == null)return;

    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);
    //final returnedImage = await ImagePickerIOS().pickImage(source: ImageSource.gallery);
    if(returnedImage == null)return;

    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }
}

