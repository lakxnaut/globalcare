import 'package:flutter/material.dart';
import 'package:global_nuero_care/inpatient_details.dart';
import 'components/TextfieldWidget.dart';

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
        // color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                "Call When Your Appointment Time",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'sf',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                shadowColor: Colors.grey,
                elevation: 50,
                // color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(25),
                  // margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent)),
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
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFff9f11),
                            shape: StadiumBorder(
                                side: BorderSide(color: Color(0xFFff9f11))),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Join",
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
