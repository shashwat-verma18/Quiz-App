import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ResScreen extends StatelessWidget {
  String score;
  String msg;
  ResScreen(this.score, this.msg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Center(
                child: Text(
                  'Your Score !',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Felipa',
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Center(
                child: Text(
                  score + ' / 10 ',
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Graduate',
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Center(
                child: Text(
                  msg,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Merienda',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
