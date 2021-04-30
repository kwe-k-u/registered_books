import 'package:flutter/material.dart';
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
                  function: (){
                    //todo search
                  }
              ),
            )

          ],
        ),
      ),
    );
  }
}
