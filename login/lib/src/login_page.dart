import 'dart:ui';

import 'package:flutter/material.dart';

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
  
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          TextField(
            controller: controller,
          ),
          Container(
            child: RaisedButton(
                child: Text('click me'),
                onPressed: () {
               return   controller.text.startsWith('a')?
                  widget.onSuccess('Success'):widget.onFail('Failed');
                  // widget.onSuccess;
                }
                //widget.onSubmit
                // widget.onSuccess

                ),
          ),
        ],
      ),
    ));
  }
}
