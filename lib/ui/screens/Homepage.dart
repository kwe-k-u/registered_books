import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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



  Future<Map<String, dynamic>> getBookList() async {
    final String response = await rootBundle.loadString('assets/books.json');
    final data = await json.decode(response);

    return data;
  }



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
                      MaterialPageRoute(builder: (context)=> BookListPage(getBookList()))
                  );
                }),

            CustomButton(
                text: "About",
                function: (){

                  showDialog(
                      context: context,
                      builder: (context){
                        return AboutDialog(
                          children: [
                            Text("This application was not developed by any agency of the Government of Ghana.\n It was developed by an individual"+
                              " in response to recent public outrage about books being used in schools depicting wrong imagery of some ethnic groups. \n List of "
                                  " approved books is obtained from the NACCA website at nacca.gov.gh", maxLines: 50,)
                          ],
                        );
                      });
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=> AboutPage())
                  // );
                }),

            // CustomButton(
            //     text: "Leave a comment",
            //     function: (){
            //
            //       showDialog(context: context, builder: (context)=> CommentPopUp());
            //     }),

            TextButton(
                onPressed: (){
                  //todo update phone's database
               },
                child: Text("Your local version is up to date")
            )
            //todo add file a report to NACCA?
          ],
        ),
      ),
    );
  }
}
