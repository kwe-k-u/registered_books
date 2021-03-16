import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final String hintText;

  CustomTextField({
    this.hintText
});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
    );
  }
}
