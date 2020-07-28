import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Settings');
          },
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/AboutMe');
            },
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFCF2222),
        title: Center(
          child: Text(
            "My Profile",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 33.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
