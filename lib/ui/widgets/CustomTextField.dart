import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  CustomTextField({
    this.hintText,
    this.controller
});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
    );
  }
}
