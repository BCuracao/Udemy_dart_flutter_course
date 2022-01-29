import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LandingScreenState();
  }
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(bottom: 120),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ls_bubble_1.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 20),
              child: Transform.rotate(
                angle: 10.0,
                child: Image.asset(
                  "assets/data_vis_1.png",
                  scale: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
