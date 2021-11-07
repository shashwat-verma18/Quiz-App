// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'javaScreen.dart';
import 'cpScreen.dart';
import 'pyScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nameCon = new TextEditingController();
  String name = '';

  int sel = 0;
  List<Icon> pl = [
    Icon(Icons.circle_outlined, color: Colors.white),
    Icon(Icons.circle_outlined, color: Colors.white),
    Icon(Icons.circle_outlined, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Let\'s check your Programming Skills !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merienda',
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Enter your information below',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gruppo',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: TextField(
                  controller: nameCon,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal)),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Felipa',
                  ),
                  onChanged: (text) {
                    name = text;
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Choose a programming language : ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gruppo',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.white,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'C++',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Graduate',
                          ),
                        ),
                        leading: Radio(
                          value: 1,
                          groupValue: sel,
                          onChanged: (val) {
                            setState(() {
                              sel = 1;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Java',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Graduate',
                          ),
                        ),
                        leading: Radio(
                          value: 2,
                          groupValue: sel,
                          onChanged: (val) {
                            setState(() {
                              sel = 2;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Python',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Graduate',
                          ),
                        ),
                        leading: Radio(
                          value: 3,
                          groupValue: sel,
                          onChanged: (val) {
                            setState(() {
                              sel = 3;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (sel == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CpScreen(),
                            ),
                          );
                        } else if (sel == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const JavaScreen()),
                          );
                        } else if (sel == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PythonScreen()),
                          );
                        }
                      },
                      child: Text(
                        'Start Quiz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.green,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
