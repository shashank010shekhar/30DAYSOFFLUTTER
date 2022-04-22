import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_catalog/pages/scan.dart';
import 'drawer.dart';
import 'Start.dart';

class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Start()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Authentication App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          signOut();
        },
        child: Icon(Icons.logout_rounded,color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Display Image
            Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),
             
            //First Button
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScanQR()));
              },
                child: Text("Scan QR Code",style: TextStyle(color: Colors.deepPurple),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.deepPurple),
              ),
            ),
            SizedBox(height: 10),
 
            //Second Button
            
          ],
        ),
      ),
   
      drawer: MyDrawer(),
    );
  }
}
