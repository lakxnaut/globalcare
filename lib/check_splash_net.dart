import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_nuero_care/dashboard.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'components/networkerror_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class checkSplashNetwork extends StatefulWidget {
  checkSplashNetwork({Key? key}) : super(key: key);

  @override
  _checkSplashNetworkState createState() => _checkSplashNetworkState();
}

class _checkSplashNetworkState extends State<checkSplashNetwork> {
  bool network = false;
  User? user = FirebaseAuth.instance.currentUser;

  _navigate() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    await checkinternet();
    if (network) {
      checkUser();
    } else
      Get.off(NetworkErrorScreen());
  }

  void checkUser() async {
    if (user != null) {
      Get.offAll(DashboardScreen());
    } else {
      Get.offAll(SelectLang());
    }
  }

  checkinternet() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      network = true;
    } else {
      network = false;
    }
  }

  @override
  void initState() {
    super.initState();
    _navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            child: Image.asset("assets/images/logo.png"),
          ),
          CircularProgressIndicator()
        ],
      )),
    );
  }
}
