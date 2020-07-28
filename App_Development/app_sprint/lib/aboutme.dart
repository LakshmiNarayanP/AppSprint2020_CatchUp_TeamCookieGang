import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCF2222),
        title: Center(
          child: Text(
            'About Me',
            style: TextStyle(
              fontSize: 33.0,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 180.0,
            width: 180.0,
            child: Image.asset(
              'images/jack1.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Username : ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'QuickSand',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Jack Fannigan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Email ID : ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'QuickSand',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'jackfin@mls.com',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Bio : ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'QuickSand',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Be you best.',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Gender : ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'QuickSand',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Male',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Date of Birth : ',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: 'QuickSand',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                '26.07.1984',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                ),
              )
            ],
          ),
          SizedBox(
            height: 60.0,
          )
        ],
      ),
    );
  }
}
