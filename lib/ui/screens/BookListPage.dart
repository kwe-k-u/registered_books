import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:registered_books/ui/widgets/CustomRow.dart';

class BookListPage extends StatefulWidget {
  final Future future;

  BookListPage( this.future);
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
      body: FutureBuilder(
        future: widget.future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data.length == 0)
              return Center(child: Text("No books"),);
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                Map<String, dynamic> map = snapshot.data[snapshot.data.keys.elementAt(index)];

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
