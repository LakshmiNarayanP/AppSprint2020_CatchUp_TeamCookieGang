import 'package:app_sprint/cat_scout.dart';
import 'package:app_sprint/main.dart';
import 'package:app_sprint/trend_scout.dart';
import 'package:flutter/material.dart';

class ScoutPage extends StatefulWidget {
  @override
  _ScoutPageState createState() => _ScoutPageState();
}

class _ScoutPageState extends State<ScoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCF2222),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Categories'),
              Tab(text: 'Trending'),
            ],
          ),
          title: Center(
            child: Text(
              "Scout",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 33.0,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Categories_Scout(),
            Trending_Scout(),
          ],
        ),
      ),
    ));
    /*appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFCF2222),
        title: Center(
          child: Text(
            "Scout",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 33.0,
            ),
          ),
        ),

    )*/
  }
}
