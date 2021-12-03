import 'package:flutter/material.dart';
import 'package:global_nuero_care/string.dart';

class GetAppointmentScreen extends StatefulWidget {
  const GetAppointmentScreen({Key? key}) : super(key: key);

  @override
  _GetAppointmentScreenState createState() => _GetAppointmentScreenState();
}

class _GetAppointmentScreenState extends State<GetAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksafroncolor,
        title: Text("Book Your Appointment"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: Column(
            children: [
              Container(
                child: Text("Fill Patient Details"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
