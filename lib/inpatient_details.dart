import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:global_nuero_care/string.dart';
import 'package:image_picker/image_picker.dart';
import 'components/TextfieldWidget.dart';

class InpatientDetails extends StatefulWidget {
  const InpatientDetails({Key? key}) : super(key: key);

  @override
  State<InpatientDetails> createState() => _InpatientDetailsState();
}

class _InpatientDetailsState extends State<InpatientDetails> {
  @override
  final ImagePicker _picker = ImagePicker();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Inpatient Details"),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 0, bottom: 15, left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 8),
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
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ksafroncolor, shape: StadiumBorder()),
                      onPressed: () {},
                      child: Text("Submit"))),
            )
          ],
        ),
      )),
    );
  }
}
