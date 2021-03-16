import 'package:flutter/material.dart';


DataRow BookDataRow ({
  @required int sn,
  @required String title,
  @required String bookType,
  @required String subject,
  @required String isbn,
  @required String author,
  @required String publisher,
  @required String level
}){

  return DataRow(
    cells: [
      DataCell(Text(sn.toString())),
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