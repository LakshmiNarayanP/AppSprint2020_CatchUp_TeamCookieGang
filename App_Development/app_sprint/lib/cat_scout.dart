import 'package:flutter/material.dart';

class Categories_Scout extends StatefulWidget {
  @override
  _Categories_ScoutState createState() => _Categories_ScoutState();
}

class _Categories_ScoutState extends State<Categories_Scout> {
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
          filled: true,
          fillColor: Color(0xFFE2DFDF),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Search categories',
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
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_nature1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_tech1.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed tech category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_art1.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_fashion1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_movies1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_sports1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_cars1.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_travel1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_arc1.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_music1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_comics1.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          height: 150.0,
          minWidth: 100.0,
          //textColor: Colors.white,
          splashColor: Colors.red,
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/cat_diy1.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(360.0, 70.0, 360.0, 70.0),
            ),
          ),
          onPressed: () {
            print('Pressed nature category');
          },
        ),
      ],
    );
  }
}
