import 'package:flutter/material.dart';





class CustomListTile extends StatefulWidget {
  @required final String sn;
  @required final String title;
  @required final String bookType;
  @required final String subject;
  @required final String isbn;
  @required final String author;
  @required final String publisher;
  @required final String level;


  CustomListTile({this.sn,
    this.title,
    this.bookType,
    this.subject,
    this.isbn,
    this.author,
    this.publisher,
    this.level,});


  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text(widget.author),
      leading: Column(
        children: [

        ],
      ),
    );
  }
}


DataRow BookDataRow ({
  @required String sn,
  @required String title,
  @required String bookType,
  @required String subject,
  @required String isbn,
  @required String author,
  @required String publisher,
  @required String level,
}){
  return DataRow(
    cells: [
      DataCell(Text(sn)),
      DataCell(Text(title)),
      DataCell(Text(subject)),
      DataCell(Text(isbn)),
      DataCell(Text(author)),
      DataCell(Text(publisher)),
      DataCell(Text(bookType)),
      DataCell(Text(level)),
    ]
  );
}