
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final Function function;

  CustomButton({
    @required this.text,
    @required this.function
});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: function,
        child: Text(text)
    );
  }
}
