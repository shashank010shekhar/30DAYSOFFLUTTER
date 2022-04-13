import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Authentication App"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text("Welcome to our authentication app"),
            ),
            
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
