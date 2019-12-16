import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
 Signup({Key key, @required this.onSuccess, @required this.onFail})
      : super(key: key);

 final Function(String) onSuccess;
 final Function(String) onFail;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController; 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   animationController=AnimationController(vsync: this,duration: Duration(seconds: 2)) ;
   animation=Tween<double>(begin: 0.0,end: 360.0).animate(animationController);
   animationController.repeat();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: <Widget>[
              Center(
                child: AnimatedBuilder(
                  
                                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.orangeAccent,
                    ),
                      animation: animation, builder: (BuildContext context, Widget child) {
                      return Transform.rotate(child: child, angle: animation.value,);
                    },
                )
              ),
              Center(child: Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              
                ))
            ],
          ),
    );
  }
}