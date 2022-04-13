import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Authentication App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to our authentication app"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
