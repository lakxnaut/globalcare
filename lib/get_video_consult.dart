import 'package:flutter/material.dart';
import 'package:global_nuero_care/inpatient_details.dart';
import 'package:global_nuero_care/string.dart';
import 'components/TextfieldWidget.dart';

class GetVideoConsult extends StatefulWidget {
  const GetVideoConsult({Key? key}) : super(key: key);

  @override
  State<GetVideoConsult> createState() => _GetVideoConsultState();
}

class _GetVideoConsultState extends State<GetVideoConsult> {
  int selectedvalue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Inpatient Details"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Fill Your Details",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Text("Name")),
                      Expanded(
                        flex: 3,
                        child: TextfieldWidget(
                          labeltext: "Enter your name",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text("Age")),
                      Expanded(
                        flex: 3,
                        child: TextfieldWidget(
                          labeltext: "Enter your Age",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text("Whatsapp No.")),
                      Expanded(
                        flex: 3,
                        child: TextfieldWidget(
                          labeltext: "Enter your Whatsapp No",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                child: Text(
                  "Note",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                            "Video call appointment is only available for these \n days Monday,Wednesday and Friday"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                            "If today is one of Monday, Wednesday and Friday,\n then select the appointment time and book the \n appointment "),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: RadioListTile<int>(
                activeColor: Colors.red,
                value: 1,
                groupValue: selectedvalue,
                onChanged: (value) {
                  setState(() {
                    selectedvalue = 1;
                  });
                },
                title: Text("Booking on Time Between 1 PM to 2 PM"),
              ),
            ),
            Expanded(
              child: RadioListTile<int>(
                activeColor: Colors.red,
                value: 2,
                groupValue: selectedvalue,
                onChanged: (value) {
                  setState(() {
                    selectedvalue = 2;
                  });
                },
                title: Text("Booking on Time Between 1 PM to 2 PM"),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(onPressed: () {}, child: Text("Book Now")),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
