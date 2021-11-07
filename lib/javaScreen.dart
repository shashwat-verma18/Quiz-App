// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'jLnag.dart';
import 'res.dart';

JLang java = JLang();

class JavaScreen extends StatelessWidget {
  const JavaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Java Quiz'),
        backgroundColor: Colors.indigo[900],
      ),
      body: const SafeArea(
        child: Java(),
      ),
    );
  }
}

class Java extends StatefulWidget {
  const Java({Key? key}) : super(key: key);

  @override
  _JavaState createState() => _JavaState();
}

class _JavaState extends State<Java> {
  int qn = 0;
  int optn = 0;
  int res = 0;
  int sel = 0;
  int prev = 0;
  int n = 0;
  List<int> ch = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

  prevf() {
    if (qn > 0) {
      optn -= 4;
      qn--;
    }
    sel = ch[qn];
    for (int i = 0; i < 4; i++) {
      if (i + 1 == sel)
        def[i] = Icon(Icons.check_circle_rounded, color: Colors.blueAccent);
      else
        def[i] = Icon(Icons.circle_outlined, color: Colors.grey);
    }
    if (res > 0) res--;
    print(res);
  }

  pressed(int x, int y) {
    setState(() {
      if (x == y) res++;
    });
    if (qn == 9) n = 1;
    if (qn < 9) {
      optn += 4;
      qn++;
    }
    ch[qn - 1] = x;
    for (int i = 0; i < 4; i++) {
      def[i] = Icon(Icons.circle_outlined, color: Colors.grey);
    }
    sel = 0;
  }

  List<Icon> def = [
    Icon(Icons.circle_outlined, color: Colors.grey),
    Icon(Icons.circle_outlined, color: Colors.grey),
    Icon(Icons.circle_outlined, color: Colors.grey),
    Icon(Icons.circle_outlined, color: Colors.grey),
  ];

  String msg = 'Well Done ...';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Question
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 50.0),
            child: Text(
              java.quesBank[qn].qText,
              style: const TextStyle(
                fontSize: 22.0,
                fontFamily: 'Merienda',
              ),
            ),
          ),
          //Options
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    setState(() {
                      sel = 1;
                      def[0] = Icon(Icons.check_circle_rounded,
                          color: Colors.blueAccent);
                      def[1] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[2] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[3] = Icon(Icons.circle_outlined, color: Colors.grey);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          child: Text(
                            java.opt[optn],
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Gruppo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: def[0],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      sel = 2;
                      def[1] = Icon(Icons.check_circle_rounded,
                          color: Colors.blueAccent);
                      def[0] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[2] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[3] = Icon(Icons.circle_outlined, color: Colors.grey);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          child: Text(
                            java.opt[optn + 1],
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Gruppo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: def[1],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      sel = 3;
                      def[2] = Icon(Icons.check_circle_rounded,
                          color: Colors.blueAccent);
                      def[0] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[1] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[3] = Icon(Icons.circle_outlined, color: Colors.grey);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          child: Text(
                            java.opt[optn + 2],
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Gruppo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: def[2],
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      sel = 4;
                      def[3] = Icon(Icons.check_circle_rounded,
                          color: Colors.blueAccent);
                      def[0] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[1] = Icon(Icons.circle_outlined, color: Colors.grey);
                      def[2] = Icon(Icons.circle_outlined, color: Colors.grey);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          child: Text(
                            java.opt[optn + 3],
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontFamily: 'Gruppo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0),
                          margin: const EdgeInsets.all(10.0),
                          child: def[3],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Forward Back
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            prevf();
                          });
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.deepOrange,
                          size: 35,
                        ),
                      ),
                      Text(
                        'Prev',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: 'Handlee',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Divider(color: Colors.white)),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            pressed(sel, java.quesBank[qn].ans);
                            if (n == 1) {
                              String score = res.toString();
                              if (res < 6) {
                                msg = 'Better luck next time ...';
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ResScreen(score, msg)),
                              );
                            }
                          });
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 35,
                        ),
                      ),
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Handlee',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
