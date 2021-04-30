
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
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue, width: 4.0)
                  )
              )
          ),
          onPressed: function,
          child: Center(child: Text(text, style: TextStyle(color: Colors.black),))
      ),
    );
  }
}
