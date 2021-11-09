import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatefulWidget {
  final String phone;
  OtpScreen({this.phone = "9999999999"});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  // String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.red.shade100,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.redAccent,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //       colors: [
            //         const Color(0xFFfb7ba2),
            //         const Color(0xFFfce043),
            //       ],
            //       begin: const FractionalOffset(0.0, 0.0),
            //       end: const FractionalOffset(1.0, 0.0),
            //       stops: [0.0, 1.0],
            //       tileMode: TileMode.clamp),
            // ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    "Verify OTP",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.8,
                    child: Image.asset("assets/images/otp2.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    "Please enter the OTP which  \n is sent on +91${widget.phone}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: PinPut(
                    fieldsCount: 6,
                    textStyle:
                        const TextStyle(fontSize: 25.0, color: Colors.white),
                    eachFieldWidth: 40.0,
                    eachFieldHeight: 55.0,
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                    pinAnimationType: PinAnimationType.fade,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                        ),
                        onPressed: () {
                          Get.to(SelectLang());
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
