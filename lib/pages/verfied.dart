import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/config.dart';

class verified extends StatefulWidget {

  @override
  State<verified> createState() => _verifiedState();
}

class _verifiedState extends State<verified> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("RESULT"),backgroundColor: Colors.deepPurple,foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("YOUR PRODUCT IS VERIFIED",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
              SizedBox(height: 10,),
                Image.asset("assets/images/verified.gif",width: 200,
                height: 200,),
                SizedBox(
        height: 20.0,
      ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
    primary: Colors.deepPurple, // background 
  ),       

            onPressed: () {Navigator.pushNamed(context, '/home');},
            child: const Text('GO BACK',style: TextStyle(fontSize: 20.0),),
            
          ),
            ],
          ),
        ),
      ),
    );
  }
}