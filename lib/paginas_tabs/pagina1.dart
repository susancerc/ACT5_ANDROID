import 'package:flutter/material.dart';

class PrimerTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Container(
        child: Center(
          child: Column(
            // center del children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.receipt,
                size: 200.0,
                color: Colors.white,
              ),// fin de icon
              Text(
                "Negocio",
                style: TextStyle(color: Colors.white),
              )//fin de text negocio
            ],// fin de children widget
          ),// fin child column
        ),// fin center
      ),//fin container
    );// fin de scaffold
  }//fin widget build
}// fin class primertab
