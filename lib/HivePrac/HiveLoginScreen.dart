import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/MainScreen.dart';
import 'package:flutter_app1/HivePrac/User.dart';
import 'package:flutter_app1/components/FormContainer.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveLoginScreen extends StatefulWidget {
  @override
  _HiveLoginScreenState createState() => _HiveLoginScreenState();
}

class _HiveLoginScreenState extends State<HiveLoginScreen> {
  final formKey = GlobalKey<FormState>();
  String _usernameValue;
  String _passwordValue;
  TextEditingController newUsername = TextEditingController();

  Box user = Hive.box("users");
  User currentUser;

  emailOnSaved(String value) {
    _usernameValue = value;
  }

  passwordOnSaved(String value) {
    _passwordValue = value;
  }

  onTapSignIn() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(_passwordValue);
      var user = User(username: _usernameValue, password: _passwordValue);
      Box users = Hive.box("users");
      users.add(user);

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
          (route) => false);
    }
  }

  onTapChange() {
    currentUser.username = newUsername.text;
    print(currentUser.username);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentUser = user.getAt(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60, right: 30),
                child: Text(
                  user.isEmpty ? "Login" : "Hey, ${currentUser.username}",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, top: 60, bottom: 60),
              child: user.isEmpty
                  ? FormContainer(
                      formKey: formKey,
                      emailOnSaved: emailOnSaved,
                      passwordOnSaved: passwordOnSaved,
                    )
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        controller: newUsername,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: "New username",
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
            ),
            GestureDetector(
              onTap: () => user.isEmpty ? onTapSignIn() : onTapChange(),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  user.isEmpty ? "Login" : "Change",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
