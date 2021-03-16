import 'package:flutter/material.dart';
import 'package:registered_books/ui/widgets/CustomTextField.dart';


class SearchBookPage extends StatefulWidget {
  @override
  _SearchBookPageState createState() => _SearchBookPageState();
}

class _SearchBookPageState extends State<SearchBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [


            CustomTextField(
              hintText: "Title of book",
            ),


            CustomTextField(
              hintText: "Title of book",
            ),


            CustomTextField(
              hintText: "Title of book",
            ),


            CustomTextField(
              hintText: "Title of book",
            ),

          ],
        ),
      ),
    );
  }
}
