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
                text: '   WELCOME TO OUR' , 
                style: TextStyle(fontSize: 25.0, 
                fontWeight: FontWeight.bold, 
                color:Colors.black,
            
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n\nProduct Verifier', 
                    style: TextStyle(fontSize: 35.0,
                    fontWeight: FontWeight.bold, 
                    color: Colors.deepPurple)
                  )
                ],
              ),
            ),
            SizedBox(height:15),
            Container(
              margin: EdgeInsets.fromLTRB(1.0, 20.0, 3.0, 4.0),
              child: Text(
                ' Your one tap product verifier',
                 style: TextStyle
                 (fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                   color:Colors.black,
                    )
              ),
              
              ),
              SizedBox(height:20),
              Container(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                

            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Login',style: TextStyle(fontSize: 20.0),),
          ),
              ),
          SizedBox(height:20),
              Container(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                

            onPressed: () {Navigator.pushNamed(context, '/SignUp');},
            child: const Text('Sign Up',style: TextStyle(fontSize: 20.0),),
          ),
              ),
              
          ],
        ),
      ),
      
    );
  }
}