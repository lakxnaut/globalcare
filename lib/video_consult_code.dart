import 'package:flutter/material.dart';
import 'package:global_nuero_care/inpatient_details.dart';

class VideoConfScreen extends StatelessWidget {
  const VideoConfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Video Consultation"),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Call When Your Appointment Time",
              style: TextStyle(
                  fontSize: 28, fontFamily: 'sf', fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.redAccent)),
              height: 400,
              child: Column(
                children: [
                  Expanded(
                      child: Text(
                          "Enter Appointment Code For Online Consultation")),
                  Expanded(
                      child: TextfieldWidget(
                    labeltext: "Join Code",
                  )),
                  Container(
                      color: Colors.redAccent,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Join",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
