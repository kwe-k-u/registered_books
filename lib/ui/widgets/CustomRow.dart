import 'package:flutter/material.dart';





class CustomListTile extends StatefulWidget {
  final String sn;
  final String title;
  final String bookType;
  final String subject;
  final String isbn;
  final String author;
  final String publisher;
  final String level;


  CustomListTile({
    @required this.sn,
    @required this.title,
    @required this.bookType,
    @required this.subject,
    @required this.isbn,
    @required this.author,
    @required this.publisher,
    @required this.level,});


  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(

        onTap: (){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  content: Container(
                    decoration: BoxDecoration(
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        RichText(
                          text: TextSpan(
                              text: "S/n: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.sn,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Title: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.title,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Author: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.author,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Subject: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.subject,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Publisher: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.publisher,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Book Type: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.bookType,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),

                        RichText(
                          text: TextSpan(
                              text: "Level: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.level,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "ISBN: \t",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: widget.isbn,
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),

                                )
                              ]
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        title: Text(widget.title, maxLines: 2, overflow: TextOverflow.ellipsis,),
        subtitle: Text(widget.author, maxLines:1, overflow: TextOverflow.ellipsis,),
        leading: Column(
          children: [
            Text("S/n"),
            Text(widget.sn),
          ],
        ),
      ),
    );
  }
}
