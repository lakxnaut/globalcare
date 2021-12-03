import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:global_nuero_care/dashboard.dart';

class SelectLang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DoubleBack(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent, width: 6),
                borderRadius: BorderRadius.zero),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Select",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.blue.shade900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Language",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.red.shade800),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image.asset("assets/images/language.jpg")),
                Container(
                  child: CupertinoRadioChoice(
                      selectedColor: Colors.redAccent,
                      choices: {
                        'hindi': 'Hindi',
                        'bengala': 'Bengala',
                        'gujrati': 'Gujrati',
                        'english': 'English',
                      },
                      onChange: (selectedGender) {
                        Get.offAll(DashboardScreen(),
                            arguments: [selectedGender]);
                      },
                      initialKeyValue: 'english'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
