import 'package:flutter/material.dart';
import 'package:flutter_app1/components/InputField.dart';

class FormContainer extends StatelessWidget {
  final formKey;
  final passwordOnSaved;
  final emailOnSaved;

  FormContainer(
      {@required this.formKey, this.emailOnSaved, this.passwordOnSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
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
              child: InputField(
                hint: "Email",
                obscure: false,
                icon: Icons.email,
                onSaved: emailOnSaved,
              ),
            ),

            SizedBox(height: 50,),


            Container(
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
              child: InputField(
                hint: "Password",
                obscure: true,
                icon: Icons.vpn_key,
                validator: (String value) {
                  if (value.length < 5) return "Password is too short";
                },
                onSaved: passwordOnSaved,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
