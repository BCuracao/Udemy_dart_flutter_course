import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixing {
  final formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            subdmitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
        hintText: "you@example.com",
      ),
      validator: validateEmail,
      onSaved: (newValue) {
        email = newValue!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
      validator: validatePassword,
      onSaved: (newValue) {
        password = newValue!;
      },
    );
  }

  Widget subdmitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
      ),
      child: Text("Submit"),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print("Time to post $email and $password to my API");
        }
      },
    );
  }
}
