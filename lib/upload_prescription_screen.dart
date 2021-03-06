import 'package:flutter/material.dart';
import 'package:global_nuero_care/string.dart';

class UploadPrescriptionScreen extends StatelessWidget {
  const UploadPrescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                margin: EdgeInsets.all(20),
                color: Colors.grey.shade50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("UPLOAD"),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                                "Please Upload images of Valid Prescription from your Doctor"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height: 60,
                                      width: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Image.asset(
                                            "assets/images/gallery.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Gallery",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height: 60,
                                      width: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Image.asset(
                                            "assets/images/gallery.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Past Rx",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PRESCRIPTION GUIDE",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.lens_rounded,
                                color: Colors.redAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Upload clear prescription images"),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.lens_rounded,
                                color: Colors.redAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Upload clear prescription images"),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: 200,
                            child: Image.asset(
                                "assets/images/prescription_img.png"),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      // color: ksafroncolor,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: ksafroncolor,
                              shape: StadiumBorder(side: BorderSide())),
                          onPressed: () {},
                          child: Text("CONTINUE")),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ))));
  }
}
