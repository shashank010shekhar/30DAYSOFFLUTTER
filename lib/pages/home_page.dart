import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double days = 30;
  final  String name = "Shanky";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Authentication App"),
      ),
      body: Center(
        child: Container(
          child: Text("HEY,$days days of $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
