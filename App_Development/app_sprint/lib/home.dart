import 'package:app_sprint/blog_card1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFCF2222),
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 33.0,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text(
              'Top Blog',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 28,
                  color: Color(0xFFFF0000),
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
            padding: EdgeInsets.all(2),
            onPressed: () {
              //Navigator.pushNamed(context, '/Welcome');
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(
                      colors: <Color>[Color(0xFF790000), Color(0xFFFF0000)])),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Image.asset(
                                'images/earth3.jpg',
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Title',
                              style: TextStyle(
                                fontFamily: 'QuickSand',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              'Category',
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
                        children: <Widget>[
                          Icon(
                            Icons.looks_one,
                            color: Color(0xFFFFD700),
                            size: 50.0,
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.remove_red_eye,
                                size: 20.0,
                                color: Color(0xFFFFD700),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '5M',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFD700),
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
                                color: Color(0xFFFFD700),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                '4.8M',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFD700),
                                  fontFamily: 'QuickSand',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
            child: Text(
              'Latest Blogs',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 28.0,
                color: Color(0xFFFF0000),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          //Blog Card 1
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/BlogCard1');
                },
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
                                  'images/bitcoin.png',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Bitcoin scam',
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
                                'Social Media',
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
                                'By Ramesh D',
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
                                  '13K',
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
                                  '7.6K',
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
          //Blog card 2
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
                                  'images/music.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 2',
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
                                'Music',
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
                                  '11M',
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
                                  '10M',
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
          //BLog Card 3
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
                                  'images/nature.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 3',
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
                                'Nature',
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
                                  '1M',
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
                                  '328K',
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
          //Blog Card 4
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
                                  'images/photog.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 4',
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
                                'Photography',
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
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                  '475K',
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
                                  '198K',
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
          //Blog Card 5
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
                                  'images/movie.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 5',
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
                                'Movies',
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
                                  '130M',
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
                                  '129M',
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
          //Blog Card 6
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
                                  'images/cricket.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 6',
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
                                'Sports',
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
                                  '5M',
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
                                  '3.6M',
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
          //Blog Card 7
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
                                  'images/bio.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 7',
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
                                'Biology',
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
                                  '89K',
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
                                  '12K',
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
          //Blog Card 8
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
                                  'images/tech.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 8',
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
                                'Technology',
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
                                  '7M',
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
                                  '4.2M',
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
          //Blog Card 9
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
                                  'images/fashion.jpg',
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Title 9',
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
                                'Fashion',
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
                                  '14M',
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
                                  '8.6M',
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
          //Blog Card 10
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
      ),
    );
  }
}
