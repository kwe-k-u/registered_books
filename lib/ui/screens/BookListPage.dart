import 'package:flutter/material.dart';
import 'package:registered_books/ui/widgets/CustomRow.dart';

class BookListPage extends StatefulWidget {
  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("List of approved books"),
        centerTitle: true,
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [

            DataColumn(
                label: Text("S/n"),
                numeric: true
            ),

            DataColumn(
                label: Text("Title of book"),
                numeric: false
            ),

            DataColumn(
                label: Text("Subject"),
                numeric: false
            ),

            DataColumn(
                label: Text("ISBN"),
                numeric: true
            ),

            DataColumn(
                label: Text("Author"),
                numeric: false
            ),

            DataColumn(
                label: Text("Publisher"),
                numeric: false
            ),

            DataColumn(
                label: Text("Book Type"),
                numeric: false
            ),

            DataColumn(
                label: Text("Level"),
                numeric: false
            ),

          ], rows: [
            BookDataRow(
              sn: 1,
              title: "Ananse in the land of idiots",
              bookType: "Teacher's guide",
              subject: "Literature",
              isbn: "384938",
              author: "Kwesi Mintim",
              publisher: "Esi Mdns",
              level: "JHS"
            )
        ],
        ),
      ),
    );
  }
}
