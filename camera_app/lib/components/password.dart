import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Password extends StatefulWidget {
  final controller;
  final String hintText;

  Password({
    super.key,
    required this.controller,
    required this.hintText,
    //required this._obscureText
  });

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: 
                  TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureText,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(icon: _obscureText ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },),
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    )
                  ),
                ),
              );
  }
}