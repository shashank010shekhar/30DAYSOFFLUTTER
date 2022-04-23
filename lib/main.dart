import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Start.dart';
import 'package:flutter_catalog/pages/config.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/scan.dart';
import 'package:flutter_catalog/pages/sign_up.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_catalog/pages/shared.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('easyTheme');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // initializing the firebase app
  runApp(Google()); // calling runApp
}

// google signin stateful widget
class Google extends StatefulWidget {
  Google({Key? key}) : super(key: key);
  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  var islogin;

  checkUserLoginState() async {
    await Shared.getUserSharedPrefernces().then((value) {
      setState(() {
        islogin = value;
      });
    });
  }

  @override
  void initState() {
    checkUserLoginState();
    super.initState();
    currentTheme.addListener(() {
      print('Changes');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: currentTheme.currentTheme(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      home: islogin != null
          ? islogin
              ? HomePage()
              : Start()
          : Start(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.signuproute: (context) => Signup(),
        MyRoutes.scanqr: (context) => ScanQR(),
      },
    );
  }
}
