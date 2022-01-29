import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: [
          emailInput(),
          passwordInput(),
        ],
      ),
    );
  }

  Widget emailInput() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "email@example.com",
        labelText: "Email Address",
      ),
    );
  }

  passwordInput() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter Password",
        labelText: "Password",
      ),
    );
  }
}
