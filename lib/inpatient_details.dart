import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class InpatientDetails extends StatelessWidget {
  const InpatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Inpatient Details"),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 8),
              child: Text(
                "Patient Personal Details",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sf'),
              ),
            ),
            Expanded(
                child: TextfieldWidget(
              labeltext: "Enter Name",
            )),
            Expanded(
                child: TextfieldWidget(
              labeltext: "Whatsapp no.1",
            )),
            Expanded(child: TextfieldWidget(labeltext: "Whatsapp no.2")),
            Expanded(child: TextfieldWidget(labeltext: "Whatsapp no.3")),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 8),
              child: Text(
                "Date of Admission",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sf'),
              ),
            ),
            Expanded(child: TextfieldWidget(labeltext: "Date of Admission")),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 8),
              child: Text(
                "Sponsered by",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sf'),
              ),
            ),
            Expanded(child: TextfieldWidget(labeltext: "Enter Sponsered Name")),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(onPressed: () {}, child: Text("data"))),
            )
          ],
        ),
      )),
    );
  }
}

class TextfieldWidget extends StatelessWidget {
  final String labeltext;
  TextfieldWidget({this.labeltext = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labeltext,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
