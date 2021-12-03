import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_nuero_care/enter_otp.dart';

class EnterNumberScreen extends StatefulWidget {
  const EnterNumberScreen({Key? key}) : super(key: key);
  @override
  _EnterNumberScreenState createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends State<EnterNumberScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DoubleBack(
        child: Center(
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
                    "Verify Number",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: Image.asset("assets/images/otp1.png")),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    "Please enter your mobile number \n then we will send OTP to verify",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: 'Enter Phone Number',
                        contentPadding: EdgeInsets.all(18.0),
                        counterText: "",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "+91",
                            style: TextStyle(fontSize: 18),
                          ),
                        )),
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
                          Get.offAll(OtpScreen(
                            phone: _controller.text,
                          ));
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
