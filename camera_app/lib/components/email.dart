import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final double width;

  const Email({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.width
  });

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width;
    return Container(
                width: widget.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: 
                  TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: widget.controller,
                  obscureText: widget.obscureText,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    )
                  ),
                ),
              );
  }
}