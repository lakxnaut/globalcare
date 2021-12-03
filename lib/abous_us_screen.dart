import 'package:flutter/material.dart';
import 'package:global_nuero_care/string.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksafroncolor,
        title: Text("About Us"),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset("assets/images/aboutdoctor.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/gmail.png"),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/facebook.png",
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/twitter.png"),
                ),
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.red.shade100),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(100))),
              // margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 12),
                    // width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    "We are a group of neurosurgeons - All trained in Chennai Apollo Neurosurgery department - working as a team to deliver excellent results in brain and spine surgeries at minimal possible cost. \nCurrently we are active in West Bengal, Maharashtra, Andhra Pradesh and Tamil Nadu.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}
