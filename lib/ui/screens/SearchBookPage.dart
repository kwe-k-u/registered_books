import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registered_books/ui/screens/BookListPage.dart';
import 'package:registered_books/ui/widgets/CustomButton.dart';
import 'package:registered_books/ui/widgets/CustomTextField.dart';


class SearchBookPage extends StatefulWidget {
  @override
  _SearchBookPageState createState() => _SearchBookPageState();
}

class _SearchBookPageState extends State<SearchBookPage> {
  TextEditingController titleController = new TextEditingController();
  TextEditingController authorController = new TextEditingController();
  TextEditingController isbnController = new TextEditingController();
  TextEditingController publisherController = new TextEditingController();




  Future<Map<String, dynamic>> search() async {
    final String response = await rootBundle.loadString('assets/books.json');
    final Map<String, dynamic> data = await json.decode(response);
    data.removeWhere((key, value) {
      if (! value["title"].contains(titleController.text.toLowerCase().trim()))
        return true;
      if (! value["author"].toLowerCase().contains(authorController.text.toLowerCase().trim()))
        return true;
      if (! value["isbn"].toLowerCase().contains(isbnController.text.toLowerCase().trim()))
        return true;
      if (! value["publisher"].toLowerCase().contains(publisherController.text.toLowerCase().trim()))
        return true;

      return false;
    });


    return data;
  }



  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    authorController.dispose();
    isbnController.dispose();
    publisherController.dispose();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for book"),
        centerTitle: true,
      ),



      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: "Title of book",
                  controller: titleController,
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: "Author of book",
                  controller: authorController,
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: "ISBN of book",
                  controller: isbnController,
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: "Publisher",
                  controller: publisherController,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                    text: "Search",
                    function: () {
                      //todo search
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> BookListPage(search()))
                      );
                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
