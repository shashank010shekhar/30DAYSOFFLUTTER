import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/config.dart';

class aboutus extends StatefulWidget {
 

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ABOUT US"),backgroundColor: Colors.deepPurple,foregroundColor: Colors.white,),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("This project has been made by:-\nShashank Shekhar Dubey \NUnder the supervision of Rajeev Sir.\n I would like to thank sir for the guidance and support",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
              ),
              
                SizedBox(height: 20.0,),
                
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