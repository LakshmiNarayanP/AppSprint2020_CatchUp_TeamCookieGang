import 'package:flutter/material.dart';

class SearchTags extends StatefulWidget {
  @override
  _SearchTagsState createState() => _SearchTagsState();
}

class _SearchTagsState extends State<SearchTags> {
  TextStyle style = TextStyle(
    fontFamily: 'QuickSand',
    fontSize: 20.0,
  );

  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final searchField = TextField(
      controller: searchController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Color(0xFFE2DFDF),
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Search trending',
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
    );
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: searchField,
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {},
              padding: EdgeInsets.all(2),
              color: Color(0xFFE7E7E7),
              child: Container(
                color: Color(0xFFE7E7E7),
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
//mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Image.asset(
                                'images/cars.jpg',
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Title 10',
                              style: TextStyle(
                                fontFamily: 'QuickSand',
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              'Automobiles',
                              style: TextStyle(
                                fontFamily: 'QuickSand',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              'By Author',
                              style: TextStyle(
                                  fontFamily: 'QuickSand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey.shade500),
                            ),
                          ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.remove_red_eye,
                                size: 20.0,
                                color: Colors.grey.shade900,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '15M',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade900,
                                  fontFamily: 'QuickSand',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.thumb_up,
                                size: 20.0,
                                color: Colors.grey.shade900,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '12.6M',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade900,
                                  fontFamily: 'QuickSand',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
