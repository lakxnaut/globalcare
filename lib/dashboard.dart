import 'dart:convert';

import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:global_nuero_care/abous_us_screen.dart';
import 'package:global_nuero_care/components/api_service.dart';
import 'package:global_nuero_care/components/appbar.dart';
import 'package:global_nuero_care/components/drawer.dart';
import 'package:global_nuero_care/get_appointment_screen.dart';
import 'package:global_nuero_care/get_video_consult.dart';
import 'package:global_nuero_care/incoming_call_screen.dart';
import 'package:global_nuero_care/inpatient_details.dart';
import 'package:global_nuero_care/models/usermodels.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:global_nuero_care/string.dart';
import 'package:global_nuero_care/testapi.dart';
import 'package:global_nuero_care/upload_prescription_screen.dart';
import 'package:global_nuero_care/video_consult_code.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatefulWidget {
  final String phone;
  DashboardScreen({this.phone = "9999999999"});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    loginmodel(widget.phone);
  }

  // final msg = FirebaseMessaging.instance;

  // String? mytoken = "";
  // getTokn() async {
  //   final token = await FirebaseMessaging.instance.getToken();
  //   print(token);
  //   // mytoken = token;
  // }

  Future<Loginmodel?> loginmodel(String phone) async {
    final url = Uri.parse("http://3.110.39.209/login/");
    final response = await http.post(url, body: {"phone": phone});
    try {
      if (response.statusCode == 200) {
        final String responseString = response.body;
        print(responseString);

        Loginmodel loginresponse =
            Loginmodel.fromJson(json.decode(responseString));

        return loginresponse;
      } else {
        print("error status code" + (response.statusCode.toString()));

        return null;
      }
    } catch (e) {}
  }

  final String token = "";
  final urlImages = [
    'https://firebasestorage.googleapis.com/v0/b/globalcarenew.appspot.com/o/bgg.png?alt=media&token=db116650-4eba-49c2-bf12-6734f6906519',
    'https://firebasestorage.googleapis.com/v0/b/globalcarenew.appspot.com/o/Group%201828.png?alt=media&token=1c6b02e7-2445-4ee4-844f-de05861d6820',
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => Dialog());
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: ksafroncolor,
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   title: Text("Global Neuro Care"),
        // ),
        appBar: setAppBar(),
        drawer: MyDrawer(),

        body: DoubleBack(
          child: Stack(
            children: [
              Container(
                color: Colors.grey.shade100,
                height: MediaQuery.of(context).size.height,
                // color: Colors.red,
                // width: MediaQuery.of(context).size.width / 1.5,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        child: CarouselSlider.builder(
                            itemCount: urlImages.length,
                            itemBuilder: (context, index, realindex) {
                              final urlImage = urlImages[index];
                              return buildImage(urlImage, index);
                            },
                            options:
                                CarouselOptions(height: 140, autoPlay: true)),
                      ),
                      Material(
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/healthbg.jpeg")),
                            // border: Border(
                            //   bottom: BorderSide(
                            //       width: 5.0, color: Colors.lightBlue.shade900),
                            // ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(25),
                          margin: EdgeInsets.all(10),
                          height: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/bookbrain.jpg",
                                height: 120,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Health Book",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 4),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.defaultDialog(
                                          middleText: "",
                                          title: "Book Appointment?",
                                          backgroundColor: Colors.white,
                                          titleStyle:
                                              TextStyle(color: Colors.black),
                                          textConfirm: "SELF",
                                          textCancel: "OTHER",
                                          cancelTextColor: Colors.white,
                                          confirmTextColor: Colors.white,
                                          buttonColor: Colors.red,
                                          confirm: othersbtn(),
                                          cancel: selfbtn(),
                                        );
                                      },
                                      child: DashboardWidget(
                                        text: "Book Appointment",
                                        image: "assets/images/book.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 4, top: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        getTokn();
                                      },
                                      child: DashboardWidget(
                                        text: "Video Consult",
                                        image: "assets/images/videoconsult.png",
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
                                  child: Container(
                                    margin: EdgeInsets.only(right: 4, top: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(UploadPrescriptionScreen());
                                      },
                                      child: DashboardWidget(
                                        text: "Get your Medicine",
                                        image: "assets/images/getmed.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 4, top: 8),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(InpatientDetails());
                                      },
                                      child: DashboardWidget(
                                        text: "Admitted Patient",
                                        image: "assets/images/admitted.png",
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
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 4, top: 8, bottom: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(GetAppointmentScreen());
                                      },
                                      child: DashboardWidget(
                                        text: "Doctor Profile",
                                        image: "assets/images/docprofile.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 4, top: 8, bottom: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(IncomingCallScreen());
                                      },
                                      child: DashboardWidget(
                                        text: "Book Test",
                                        image: "assets/images/booktest.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
        floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              primary: Colors.red.shade900,
              padding: EdgeInsets.all(15)),
          onPressed: () {
            launch("tel://+918285717171");
          },
          child: Icon(Icons.add_call),
        ),
      ),
    );
  }

  Widget othersbtn() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ksafroncolor,
        ),
        onPressed: () {
          Get.back();
          Get.to(VideoConfScreen());
        },
        child: Text("OTHER"));
  }

  Widget selfbtn() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.black),
        onPressed: () {
          Get.back();

          Get.to(GetVideoConsult());
        },
        child: Text("SELF"));
  }

  Widget buildImage(String image, int index) => Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Colors.grey.shade500,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: MediaQuery.of(context).size.width,
              )),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      );

  // void dialog() async {
  //   Alert(
  //       context: context,
  //       title: "Fill Details",
  //       content: Container(
  //         width: 200,
  //         height: 800,
  //         child: Column(
  //           children: <Widget>[
  //             TextField(
  //               decoration: InputDecoration(
  //                 icon: Icon(Icons.account_circle),
  //                 labelText: 'Name',
  //               ),
  //             ),
  //             Row(
  //               children: [
  //                 TextField(
  //                   obscureText: false,
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'Whatsapp number',
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 5,
  //                 ),
  //                 TextField(
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'Age',
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 TextField(
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'Pincode',
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 5,
  //                 ),
  //                 TextField(
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'City',
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             Row(
  //               children: [
  //                 TextField(
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'District',
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 5,
  //                 ),
  //                 TextField(
  //                   decoration: InputDecoration(
  //                     icon: Icon(Icons.lock),
  //                     labelText: 'State',
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             TextField(
  //               decoration: InputDecoration(
  //                 icon: Icon(Icons.lock),
  //                 labelText: 'Address',
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       buttons: [
  //         DialogButton(
  //           onPressed: () => Get.back(),
  //           child: Text(
  //             "Submit",
  //             style: TextStyle(color: Colors.white, fontSize: 20),
  //           ),
  //         )
  //       ]).show();
  // }
}

class DashboardWidget extends StatelessWidget {
  DashboardWidget({this.image = "", this.text = ""});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/images/dashbg.png")),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 30, bottom: 5),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  image,
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/arrow.jpeg",
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
