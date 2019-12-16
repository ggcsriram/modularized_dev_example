import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
        LoginAndSignup()
        );
  }

 
}


class LoginAndSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
                  body: LoginPage(
            onSuccess: (res) {
                 print(res);
            },
            onFail: (res){ 
              success(res);
         },
          ),
        );
  }
   success(String hello) {
    print(hello);
  }
}
