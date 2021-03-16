import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;

  CustomTextField({
    this.hintText,
    this.icon
});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Container(
      width: size.width * 0.85,
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(widget.icon)
        ),
      ),
    );
  }
}
