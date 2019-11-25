import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
 Signup({Key key, @required this.onSuccess, @required this.onFail})
      : super(key: key);

 final Function(String) onSuccess;
 final Function(String) onFail;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: RaisedButton(onPressed: () {
              widget.onSuccess('123');
            },
        child: Text('hello'),
      ),
          ),
    );
  }
}