import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    required this.controller,
    required this.text,
    this.ispass = false,
  });

  final TextEditingController controller;
  final String text;
  final bool ispass;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      obscureText: ispass,
      keyboardType: ispass ? TextInputType.text : TextInputType.emailAddress,
    );
  }
}
