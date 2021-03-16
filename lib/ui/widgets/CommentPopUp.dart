import 'package:flutter/material.dart';
import 'package:registered_books/ui/widgets/CustomButton.dart';
import 'package:registered_books/ui/widgets/CustomTextField.dart';

class CommentPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(

      child: Column(
        children: [

          CustomTextField(
            hintText: "Review subject (optional)",
          ),

          CustomTextField(
            hintText: "Review",
          ),

          CustomButton(
              text: "Send review",
              function: (){
            //todo send review
          })

        ],
      ),
    );
  }
}
