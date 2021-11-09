import 'package:flutter/material.dart';

class EnterNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Center(
                  child: Text(
            "Enter Number Screen",
            style: TextStyle(fontSize: 24),
          ))),
        ],
      ),
    );
  }
}
