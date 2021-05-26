import 'package:flutter/material.dart';
import 'package:susan/paginas_tabs/pagina1.dart';
import 'package:susan/paginas_tabs/pagina2.dart';
import 'package:susan/paginas_tabs/pagina3.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // Title
      title: "Act 5 ANDROID",
      // Home
      home: CasaSusi()));
}// fin de main

class CasaSusi extends StatefulWidget {
  @override
  CasaSusiState createState() => CasaSusiState();
} //fin clase mi casa

class CasaSusiState extends State<CasaSusi> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller (iniciar tab controller)
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado 

  @override
  void dispose() {
    // Dispose del Tab Controller
    controller.dispose();
    super.dispose();
  } //fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar de Susi"),
        backgroundColor: Colors.grey[800],
      ), //fin del appbar
      body: TabBarView(
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.grey.shade400,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.receipt),
            ),// icono de "recepcion"
            Tab(
              icon: Icon(Icons.mood),
            ),// icono carita feliz
            Tab(
              icon: Icon(Icons.ramen_dining),
            ),// icono de maruchan
          ],
          controller: controller,
        ), //fin child tapbar
      ), //fin de bottom navigator
    ); //fin de scaffold
  } //fin widget
} //fin de class casasusi
