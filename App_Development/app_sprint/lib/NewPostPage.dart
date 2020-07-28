import 'package:app_sprint/NewPost_text.dart';
import 'package:app_sprint/NewPost_voice.dart';
import 'package:flutter/material.dart';

class NewPostPage extends StatefulWidget {
  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
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
                Tab(text: 'abc'),
                Tab(
                  icon: Icon(Icons.mic),
                )
              ],
            ),
            title: Center(
              child: Text(
                'New Post',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 33.0,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [NewPostText(), NewPostVoice()],
          ),
        ),
      ),
    );
  }
}
