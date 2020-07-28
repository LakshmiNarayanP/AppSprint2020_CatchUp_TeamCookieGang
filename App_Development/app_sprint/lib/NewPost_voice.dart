import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPostVoice extends StatefulWidget {
  @override
  _NewPostVoiceState createState() => _NewPostVoiceState();
}

class _NewPostVoiceState extends State<NewPostVoice> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Colors.grey.shade600,
                    Colors.grey.shade300,
                    Colors.white,
                    Colors.grey.shade300,
                    Colors.grey.shade600,
                  ])),
              child: Center(
                child: Text(
                  '0 : 00',
                  style: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 50.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CheckboxListTile(
              title: Text("Add your 3D avavtar ?"),
              checkColor: Colors.white,
              activeColor: Color(0xFFCF2222),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              splashColor: Colors.transparent,
              onPressed: () {},
              child: Container(
                width: 180,
                height: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    border: Border.all(color: Color(0xFFCF2222))),
                child: Row(
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
                              Icons.fiber_manual_record,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Record',
                      style: TextStyle(
                          fontFamily: 'QuickSand',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFCF2222)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
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
