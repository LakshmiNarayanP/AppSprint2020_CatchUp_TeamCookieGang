import 'package:app_sprint/Search_accs.dart';
import 'package:app_sprint/Search_tags.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                Tab(
                  text: 'Accounts',
                ),
                Tab(
                  text: 'Posts / Tags',
                ),
              ],
            ),
            title: Center(
              child: Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 33.0,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [SearchAccounts(), SearchTags()],
          ),
        ),
      ),
    );
  }
}
