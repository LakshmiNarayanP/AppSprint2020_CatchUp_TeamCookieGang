import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPostText extends StatefulWidget {
  @override
  _NewPostTextState createState() => _NewPostTextState();
}

class _NewPostTextState extends State<NewPostText> {
  TextStyle style = TextStyle(
    fontFamily: 'QuickSand',
    fontSize: 20.0,
  );

  TextEditingController titleController = new TextEditingController();
  TextEditingController contentController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final titleField = TextField(
      controller: titleController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE2DFDF),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Title',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );

    final contentField = TextField(
      controller: contentController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFE2DFDF),
          contentPadding: EdgeInsets.fromLTRB(20.0, 95.0, 20.0, 95.0),
          hintText: 'Content...',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: titleField,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: contentField,
            ),
            FlatButton(
              splashColor: Colors.transparent,
              onPressed: () {},
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFFFE1E1E),
                        Color(0xFFFF9494),
                      ]),
                ),
                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                child: Text(
                  'Upload Media',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                    fontFamily: 'QuickSand',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Color(0xFFCF2222),
                        child: InkWell(
                          splashColor: Colors.red.shade500,
                          child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Scheduled Post',
                      style: TextStyle(
                        fontFamily: 'QuickSand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCF2222),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Color(0xFFCF2222),
                        child: InkWell(
                          splashColor: Colors.red.shade500,
                          child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      ''
                      'Post Now',
                      style: TextStyle(
                        fontFamily: 'QuickSand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCF2222),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
