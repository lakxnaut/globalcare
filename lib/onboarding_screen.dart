import 'package:flutter/material.dart';
import 'package:global_nuero_care/button_widget.dart';
import 'package:global_nuero_care/enter_number.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Leading Nuerosurgeon Across India',
              body: 'Book Doctor Appointment Online',
              image: buildImage('assets/images/doc1.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Get Connected to Doctors Live',
              body:
                  'Reach a Doctor with just a click \n Tele consult with Global Doctors',
              image: buildImage('assets/images/doc2.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Get Results',
              body: 'Upload Prescriptions,get Reports',
              image: buildImage('assets/images/doctor.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Get Reports Faster',
              body: 'Our Team Upload the Reports',
              footer: ButtonWidget(
                text: 'Login/Sign Up',
                onClicked: () =>
                    Get.to(EnterNumberScreen(), transition: Transition.fadeIn),
              ),
              image: buildImage('assets/images/doctors.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text("Let's Go", style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => Get.to(
            EnterNumberScreen(),
            transition: Transition.cupertinoDialog,
            duration: const Duration(milliseconds: 500),
          ),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => Get.to(EnterNumberScreen()),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Colors.white,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.redAccent),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
