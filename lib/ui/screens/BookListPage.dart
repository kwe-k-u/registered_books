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
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                Map<String, dynamic> map = snapshot.data[(index+1).toString()];
                print(map);
                  return CustomListTile(
                    sn: map["s/n"],
                      title: map["title"],
                      bookType: map["type"],
                      subject: map["subject"],
                      isbn: map["isbn"],
                      author: map["author"],
                      publisher: map["publisher"],
                      level: map["level"]);
            });
          }

          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text("Loading books")],
            ),
          );
        },
      ),
    );
  }
}
