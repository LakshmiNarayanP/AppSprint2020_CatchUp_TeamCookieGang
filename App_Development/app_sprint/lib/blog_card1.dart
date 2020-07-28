import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogCard1 extends StatefulWidget {
  @override
  _BlogCard1State createState() => _BlogCard1State();
}

class _BlogCard1State extends State<BlogCard1> {
  bool likepost = false;
  Icon likingpost(bool verify) {
    if (verify == true) {
      return Icon(
        Icons.thumb_up,
        color: Colors.white,
      );
    } else {
      return Icon(
        Icons.thumb_up,
        color: Colors.grey.shade500,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCF2222),
        title: Center(
            child: Text(
          'Bitcoin Scam',
          style: TextStyle(
            fontFamily: 'Pacifico',
            color: Colors.white,
            fontSize: 26,
          ),
        )),
      ),
      body: ListView(
        children: <Widget>[
          Container(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('images/potrait1.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Posted by - Tim',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Posted on - 28.07.2020'),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye),
                        Text('502,581'),
                        SizedBox(
                          width: 16.0,
                        ),
                        Icon(Icons.thumb_up),
                        Text('489,335'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 360,
              child: Text(
                " On 15 July 2020, reportedly 130 high profile Twitter accounts were compromised by outside parties to promote a bitcoin scam. Twitter and other media sources confirmed that the perpetrators had gained access to Twitter's administrative tools so that they could alter the accounts themselves and post the tweets directly. They appeared to have used social engineering to gain access to the tools via Twitter employees.",
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/bitcoin.png')),
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/twitter.png')),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 360,
              child: Text(
                "The scam tweets asked individuals to send bitcoin currency to a specific cryptocurrency wallet, with the promise of the Twitter user that money sent would be doubled and returned as a charitable gesture.Within minutes from the initial tweets, more than 320 transactions had already taken place on one of the wallet addresses, and more than USD 110,000 of equivalent bitcoin had been deposited in one account before the scam messages were removed by Twitter. In addition, full message history data from eight non-verified accounts was also acquired.",
                overflow: TextOverflow.ellipsis,
                maxLines: 12,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 3.0,
          backgroundColor: Color(0xFFCF2222),
          onPressed: () {
            setState(() {
              if (likepost) {
                likepost = false;
              } else {
                likepost = true;
              }
            });
          },
          child: likepost ? likingpost(likepost) : likingpost(likepost)),
    );
  }
}
