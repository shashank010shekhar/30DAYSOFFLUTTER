import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/denied.dart';
import 'package:flutter_catalog/pages/verfied.dart';
 
class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}
 
class _ScanQRState extends State<ScanQR> {
 
  String qrCodeResult = "Not Yet Scanned";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      //Message displayed over here
      
      SizedBox(
        height: 20.0,
      ),
 
      //Button to scan QR code
      FlatButton(
        padding: EdgeInsets.all(15),
        onPressed: () async {
          String codeSanner = await BarcodeScanner.scan();    //barcode scanner
          setState(() {
            qrCodeResult = codeSanner;
          }
          
          );
          if (qrCodeResult == "001") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => verified()));
          }
          else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => denied()));
          }
        },
        child: Text("Open Scanner",style: TextStyle(color: Colors.deepPurple),),
        //Button having rounded rectangle border
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.deepPurple),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      
 
         ],
        ),
      ),
    );
  }
}