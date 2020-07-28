import 'package:app_sprint/NewPostPage.dart';
import 'package:app_sprint/ProfilePage.dart';
import 'package:app_sprint/SerachPage.dart';
import 'package:app_sprint/aboutme.dart';
import 'package:app_sprint/blog_card1.dart';
import 'package:app_sprint/scout.dart';
import 'package:app_sprint/home.dart';
import 'package:app_sprint/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WelcomeScreen(), routes: <String, WidgetBuilder>{
      '/Login': (context) => LoginPage(),
      '/HomePage': (context) => Home(),
      '/Welcome': (context) => WelcomeScreen(),
      '/BlogCard1': (context) => BlogCard1(),
      '/AboutMe': (context) => AboutMe(),
      '/Settings': (context) => SettingsMenu(),
    });
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/back.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 480,
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Catch Up !',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.redAccent,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Catch Up !',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.transparent,
                splashColor: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                      gradient: LinearGradient(colors: <Color>[
                        Color(0XFFFE1E1E),
                        Color(0xFFFF9494)
                      ])),
                  padding: EdgeInsets.fromLTRB(70.0, 10.0, 70.0, 10.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                  splashColor: Colors.transparent,
                  //shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(30.0),
                  //side: BorderSide(color: Colors.red)),
                  //color: Colors.white,
                  //textColor: Colors.red,
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                      gradient: LinearGradient(colors: <Color>[
                        Color(0xFFFE1E1E),
                        Color(0xFFFF9494),
                      ]),
                    ),
                    padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        fontFamily: 'QuickSand',
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(
    fontFamily: 'QuickSand',
    fontSize: 20.0,
  );

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: usernameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFE2DFDF),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );

    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE2DFDF),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Material(
      //elevation: 5.0,
      //borderRadius: BorderRadius.circular(30.0),
      //color: Colors.redAccent,
      child: FlatButton(
        onPressed: () {
          print(usernameController.text);
          int check = 'Admin'.compareTo(usernameController.text);
          if (check == 0) {
            Navigator.pushNamed(context, '/HomePage');
          }
          if (check != 0) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Invalid Credentials !"),
                    content: Text(
                        'The username and password entered are incorrect.'),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Login');
                        },
                        child: Text(
                          ""
                          "Try Again",
                          style: TextStyle(color: Color(0xFFFE1E1E)),
                        ),
                      )
                    ],
                  );
                });
          } //onPressed
        },
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
            gradient: LinearGradient(colors: <Color>[
              Color(0xFFFE1E1E),
              Color(0xFFFF9494),
            ]),
          ),
          padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
          child: Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30.0,
              fontFamily: 'QuickSand',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, '/Welcome');
            }),
        title: Center(
          child: Text(
            "Catch Up !",
            style: TextStyle(
                fontSize: 32.0,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Color(0xFFCF2222),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Pacifico',
                          fontSize: 40.0,
                          color: Color(0xFFFB0000)),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  emailField,
                  SizedBox(
                    height: 25.0,
                  ),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  final _pageOptions = [
    //Text('item1'),
    HomePage(),
    ScoutPage(),
    //Text('item2'),
    //Text('item3'),
    NewPostPage(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
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
        ),*/
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade500,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          backgroundColor: Color(0xFFCF2222),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.grey.shade500,
              ),
              title: Text("Home"),
              activeIcon: new Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.public,
                color: Colors.grey.shade500,
              ),
              title: Text("Scout"),
              activeIcon: new Icon(
                Icons.public,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_circle_outline,
                  color: Colors.grey.shade500),
              title: Text("New Post"),
              activeIcon: new Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              title: Text("Search"),
              activeIcon: new Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey.shade500,
              ),
              title: Text("Profile"),
              activeIcon: new Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
