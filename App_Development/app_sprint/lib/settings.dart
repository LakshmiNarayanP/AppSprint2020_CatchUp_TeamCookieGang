import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  @override
  _SettingsMenuState createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCF2222),
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 33.0,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.edit,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.lock,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Permissions',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {},
            //splashColor: Colors.red.shade200,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.cloud_upload,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Data Backup',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.insert_chart,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Statistics',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: Colors.grey.shade700,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Manage Account',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0),
          FlatButton(
            splashColor: Colors.transparent,
            onPressed: () {
              Navigator.pushNamed(context, '/Welcome');
            },
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
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  fontFamily: 'QuickSand',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
