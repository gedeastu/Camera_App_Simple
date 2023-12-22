import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Password extends StatefulWidget {
  final controller;
  final String hintText;
  final double width;

  Password({
    super.key,
    required this.controller,
    required this.hintText,
    required this.width
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
                width: widget.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: 
                  TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureText,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(icon: _obscureText ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },),
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
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