import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _passwordController = new TextEditingController();
  String name = "";
  String _errorMessage = '';
  String? _uname = "", _email = "", _password = "", _contact = "";
  String _emailError = "";
  bool _autoValidate = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Image.asset(
                    "assets/images/signup.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20.0),
                  Text("Welcome new user",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            labelText: "Email",
                          ),
                          onChanged: (val) {
                            validateEmail(val);
                          },
                          onSaved: (val) {
                            _email = val;
                          },
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),
                            controller: _passwordController),
                        new FlutterPwValidator(
                          controller: _passwordController,
                          minLength: 6,
                          uppercaseCharCount: 2,
                          numericCharCount: 3,
                          specialCharCount: 1,
                          width: 400,
                          height: 150,
                          onSuccess: () {
                            print("Matches condition");
                          },
                          onFail: () {
                            print("doesn't matches condition");
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Contact Number",
                            labelText: "Contact number",
                          ),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 150.0,
                          child: new RaisedButton(
                            color: Colors.deepPurple,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: new Text(
                              'Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _errorMessage,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
