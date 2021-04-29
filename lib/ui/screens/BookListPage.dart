import 'dart:convert';

import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registered_books/ui/widgets/CustomRow.dart';

class BookListPage extends StatefulWidget {
  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  Future<Map<String, dynamic>> getBookList() async {
    final String response = await rootBundle.loadString('assets/books.json');
    final data = await json.decode(response);

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of approved books"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getBookList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<DataRow> rowList = [];
            List<bool> selectedList = [];

            snapshot.data.forEach((key, value) {
              selectedList.add(false);
              rowList.add(
                  BookDataRow(
                  sn: value["s/n"],
                  title: value["title"],
                  bookType: value["type"],
                  subject: value["subject"],
                  isbn: value["isbn"],
                  author: value["author"],
                  publisher: value["publisher"],

                  level: value["level"]));
            });
            return BidirectionalScrollViewPlugin(
              child: DataTable(
                columns: [
                  DataColumn(label: Text("S/n"), numeric: true),
                  DataColumn(label: Text("Title of book"), numeric: false),
                  DataColumn(label: Text("Subject"), numeric: false),
                  DataColumn(label: Text("ISBN"), numeric: true),
                  DataColumn(label: Text("Author"), numeric: false),
                  DataColumn(label: Text("Publisher"), numeric: false),
                  DataColumn(label: Text("Book Type"), numeric: false),
                  DataColumn(label: Text("Level"), numeric: false),
                ],
                rows: rowList,
              ),
            );
          }

          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CircularProgressIndicator(), Text("Loading books")],
            ),
          );
        },
      ),
    );
  }
}
