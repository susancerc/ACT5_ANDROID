import 'package:flutter/material.dart';

class TercerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.ramen_dining,
                size: 160.0,
                color: Colors.white,
              ),// fin de icon
              Text(
                "Nuestros platillos",
                style: TextStyle(color: Colors.white),
              )// fin de text
            ],// fin de children widget
          ),// fin de column
        ),// fin child center
      ),// fin container
    );// fin de scaffold
  }// fi widget build
}// fin tercertab
