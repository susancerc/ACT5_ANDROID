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
      home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
} //fin clase mi casa

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("Bottom Navigation Bar de Susi"),
        backgroundColor: Colors.grey[800],
      ), //finappbar
      body: TabBarView(
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.grey.shade400,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.receipt),
            ),
            Tab(
              icon: Icon(Icons.mood),
            ),
            Tab(
              icon: Icon(Icons.ramen_dining),
            ),
          ],
          controller: controller,
        ), //fin chiltabar
      ), //fin de bottom navigator
    ); //fin de scaffold
  } //fin widget
} //fin del main
