import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "dart:math";
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List fullList = [
    '!',
    '#',
    '\$',
    '%',
    '&',
    '(',
    ')',
    '*',
    '+',
    '-',
    '.',
    '/',
    ':',
    ';',
    '<',
    '=',
    '>',
    '?',
    '@',
    '[',
    ']',
    '^',
    '_',
    '`',
    '{',
    '|',
    '}',
    '~',
    '"',
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  String password = "";

  int number = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5C2E97),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 0,
          title: Text("Random Password Generator"),
          centerTitle: true,
          backgroundColor: Color(0xFF513894)),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF802CCE),
                Color(0xFF4A5ED3),
              ],
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.instagram, color: Colors.white),
                  onPressed: () async {
                    const url = 'instagram.com/borasaltik';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                  onPressed: () async {
                    const url =
                        'https://www.linkedin.com/in/bora-saltık-14314820b/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.github, color: Colors.white),
                  onPressed: () async {
                    const url = 'https://github.com/bora399';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.reddit, color: Colors.white),
                  onPressed: () async {
                    const url = 'https://www.reddit.com/user/richwarrior41';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            Container(
              color: Color(0xC78A63E6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        number = number + 1;
                      });
                    },
                    child: Text("+",
                        style:
                            TextStyle(fontSize: 70, color: Color(0xF8ECEAF1))),
                  ),
                  Container(
                    child: Text(number.toString(),
                        style:
                            TextStyle(fontSize: 48, color: Color(0xF8ECEAF1))),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        number = number - 1;
                      });
                    },
                    child: Text("-",
                        style:
                            TextStyle(fontSize: 70, color: Color(0xF8ECEAF1))),
                  ),
                ],
              ),
            ),
            Container(
                color: Color(0xC78A63E6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          //fullList[Random().nextInt(fullList.length)];
                          setState(() {
                            password = "";
                            int i = 0;
                            while (i <= number) {
                              var a = randomChoice(fullList);
                              password += a;
                              i++;
                            }
                          });
                        },
                        child: Text(
                          "Click Me to Generate Password",
                          style:
                              TextStyle(color: Color(0xF8ECEAF1), fontSize: 25),
                        )),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(password.toString(),
                      style: TextStyle(color: Color(0xF8ECEAF1), fontSize: 25)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
