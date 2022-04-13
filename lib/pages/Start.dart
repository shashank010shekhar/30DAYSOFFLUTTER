import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Start extends StatefulWidget {
   Start({ Key? key }) : super(key: key);
  // function to implement the google signin

// creating firebase instance



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
           SizedBox(height:20),
           SignInButton(
             Buttons.Google,
             text: "Sign up with Google",
             onPressed: () {signup(context);},
             ) ,  
          ],
        ),
      ),
      
    );
  }
  final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
	final GoogleSignIn googleSignIn = GoogleSignIn();
	final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
	if (googleSignInAccount != null) {
	final GoogleSignInAuthentication googleSignInAuthentication =
		await googleSignInAccount.authentication;
	final AuthCredential authCredential = GoogleAuthProvider.credential(
		idToken: googleSignInAuthentication.idToken,
		accessToken: googleSignInAuthentication.accessToken);
	
	// Getting users credential
	UserCredential result = await auth.signInWithCredential(authCredential);
	User? user = result.user;
	
	if (result != null) {
		Navigator.pushReplacement(
			context, MaterialPageRoute(builder: (context) => HomePage()));
	} // if result not null we simply call the MaterialpageRoute,
		// for go to the HomePage screen
	}
}
}