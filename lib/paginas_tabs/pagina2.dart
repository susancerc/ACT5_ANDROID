import 'package:flutter/material.dart';

class SegundoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.mood,
                size: 160.0,
                color: Colors.white,
              ),// fin de icon
              Text(
                "Calificanos",
                style: TextStyle(color: Colors.white),
              )// fin de text
            ],// fin de children widget
          ),//fin de column
        ),// fin de child center
      ),// fin de container
    );// fin de scaffold
  }// fin de widget build
}// fin de class segundotab
