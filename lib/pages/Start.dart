import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({ Key? key }) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(1.0, 100.0, 3.0, 4.0),
              child: Image(image: AssetImage("assets/images/welcome.png"),),
            ),
            RichText(
              
              text: TextSpan(
                text: '  WELCOME to our' , 
                style: TextStyle(fontSize: 25.0, 
                fontWeight: FontWeight.bold, 
                color:Colors.black,
            
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n\nProduct Verifier', 
                    style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.bold, 
                    color: Colors.deepPurple)
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1.0, 20.0, 3.0, 4.0),
              child: Text(
                'Your one tap product verifier',
                 style: TextStyle
                 (fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                   color:Colors.black,
                    )
              )
              )
          ],
        ),
      ),
      
    );
  }
}