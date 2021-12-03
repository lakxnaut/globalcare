import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:global_nuero_care/abous_us_screen.dart';
import 'package:global_nuero_care/get_appointment_screen.dart';
import 'package:global_nuero_care/get_video_consult.dart';
import 'package:global_nuero_care/inpatient_details.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:global_nuero_care/string.dart';
import 'package:global_nuero_care/upload_prescription_screen.dart';
import 'package:global_nuero_care/video_consult_code.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ksafroncolor,
            elevation: 0,
            leading: Icon(Icons.menu),
            title: Text("Global Neuro Care"),
          ),
          body: DoubleBack(
            child: Stack(
              children: [
                Positioned(
                  top: -100,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/semirounded.jpg",
                  ),
                ),
                Container(
                  color: ksafroncolor,
                  height: MediaQuery.of(context).size.height,
                  // color: Colors.red,
                  // width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(
                                      side: BorderSide(color: Colors.red)),
                                  primary: Colors.red),
                              onPressed: () {
                                launch("tel://918285717171");
                              },
                              child: Text(
                                "EMERGENCY CALL",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.defaultDialog(
                                  middleText: "",
                                  title:
                                      "Have yoy Booked Your \n Appointment Already?",
                                  backgroundColor: Colors.white,
                                  titleStyle: TextStyle(color: Colors.black),
                                  textConfirm: "Yes",
                                  textCancel: "No",
                                  cancelTextColor: Colors.white,
                                  confirmTextColor: Colors.white,
                                  buttonColor: Colors.red,
                                  confirm: nobtn(),
                                  cancel: yesbtn(),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  elevation: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50, horizontal: 8),
                                      child: Column(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("Request a Call"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(UploadPrescriptionScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  elevation: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50, horizontal: 8),
                                      child: Column(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("Upload Prescription"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  elevation: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50, horizontal: 8),
                                      child: Column(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("Get Appointment"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(InpatientDetails());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  elevation: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50, horizontal: 8),
                                      child: Column(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text("In Patient"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => AboutScreen()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        "assets/images/placeholder.png",
                                      ),
                                    ),
                                    Text("Know About Us")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget yesbtn() {
    return ElevatedButton(
        onPressed: () {
          Get.back();
          Get.to(VideoConfScreen());
        },
        child: Text("YES"));
  }

  Widget nobtn() {
    return ElevatedButton(
        onPressed: () {
          Get.back();

          Get.to(GetVideoConsult());
        },
        child: Text("NO"));
  }
}
