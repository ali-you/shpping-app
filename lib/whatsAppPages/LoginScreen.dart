import 'package:flutter/material.dart';
import 'package:flutter_app1/animations/ButtonAnimation.dart';
import 'package:flutter_app1/components/FormContainer.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  String _emailValue;
  String _passwordValue;

  AnimationController _buttonController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buttonController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _buttonController.dispose();
    super.dispose();
  }


  emailOnSaved(String value) {
    _emailValue = value;
  }

  passwordOnSaved(String value) {
    _passwordValue = value;
  }

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        alignment: Alignment.center,
        height: sizeScreen.height,
        width: sizeScreen.width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white38,
              ),
            ),
            FormContainer(
              formKey: formKey,
              emailOnSaved: emailOnSaved,
              passwordOnSaved: passwordOnSaved,
            ),


            // GestureDetector(
            //   onTap: () {
            //     if (formKey.currentState.validate()) {
            //       formKey.currentState.save();
            //       print(_passwordValue);
            //     }
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     height: 40,
            //     width: 200,
            //     decoration: BoxDecoration(
            //         color: Colors.green,
            //         borderRadius: BorderRadius.circular(15)),
            //     child: Text(
            //       "Login",
            //       style: TextStyle(
            //           color: Colors.white70,
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // )



            GestureDetector(child: ButtonAnimation(controller: _buttonController,),
              onTap: ()async{
                if (formKey.currentState.validate()) {
                  formKey.currentState.save();
                  await _buttonController.forward();
                  await _buttonController.reverse();
                  print(_passwordValue);
                }

              },)


          ],
        ),
      ),
    );
  }
}
