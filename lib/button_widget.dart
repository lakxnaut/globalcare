import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
        ),
        onPressed: onClicked,
        // style: ButtonStyle(
        //   color: Theme.of(context).primaryColor,
        // shape: StadiumBorder(),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),

        // ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      );
}
