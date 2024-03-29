import 'package:flutter/material.dart';

import 'signup_page.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, @required this.onSuccess, @required this.onFail})
      : super(key: key);

 final Function(String) onSuccess;
 final Function(String) onFail;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: new Login(controller: controller, onSuccess: widget.onSuccess, onFail: widget.onFail,),
    );
  }
}

class Login extends StatefulWidget {
  const Login({
    Key key, @required this.onSuccess, @required this.onFail,
    @required this.controller,
   
  }) : super(key: key);

  final TextEditingController controller;
   final Function(String) onSuccess;
 final Function(String) onFail;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.ac_unit), onPressed: () {
              //  widget.controller.text.startsWith('a')?widget.onSuccess('true'):widget.onFail('false');
                Navigator.pushReplacement(context,MaterialPageRoute(
                  builder: (context)=>Signup(onFail: widget.onFail, onSuccess: widget.onSuccess,)
                  ));
          },)
        ],
      ),
        body: Center(
        )
   
    );
  }
}
