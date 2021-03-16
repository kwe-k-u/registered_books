import 'package:flutter/material.dart';
import 'package:registered_books/ui/screens/AboutPage.dart';
import 'package:registered_books/ui/screens/BookListPage.dart';
import 'package:registered_books/ui/screens/SearchBookPage.dart';
import 'package:registered_books/ui/widgets/CommentPopUp.dart';
import 'package:registered_books/ui/widgets/CustomButton.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: Text("Registered books"),
        centerTitle: true,
      ),


      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CustomButton(
                text: "Verify book",
                function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SearchBookPage())
                  );
                }),

            CustomButton(
                text: "View all registered books",
                function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> BookListPage())
                  );
                }),

            CustomButton(
                text: "About",
                function: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> AboutPage())
                  );
                }),

            CustomButton(
                text: "Leave a comment",
                function: (){

                  showDialog(context: context, builder: (context)=> CommentPopUp());
                }),

            //todo add file a report to NACCA?
          ],
        ),
      ),
    );
  }
}
