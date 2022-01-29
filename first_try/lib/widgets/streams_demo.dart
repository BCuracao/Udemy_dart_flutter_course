import 'package:flutter/material.dart';

class StreamsDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamsDemoState();
  }
}

class StreamsDemoState extends State<StreamsDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Form(
            child: Column(
              children: [
                emailField(),
                passwordField(),
                loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email Address",
        hintText: "you@example.com",
      ),
    );
  }

  Widget passwordField() {
    return TextFormField();
  }

  Widget loginButton() {
    return ElevatedButton(
      onPressed: () => {
        
      }),
      child: child,
    );
  }
}
