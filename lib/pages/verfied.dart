import 'package:flutter/material.dart';

class verified extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Load Gif Images"),),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("YOUR PRODUCT IS VERIFIED",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
              SizedBox(height: 10,),
                Image.asset("assets/verified.gif",width: 200,
                height: 200,),
              ElevatedButton(
                

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