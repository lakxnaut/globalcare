import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:global_nuero_care/onboarding_screen.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:page_transition/page_transition.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: AnimatedSplashScreen(
                  splashIconSize: 500,
                  duration: 900,
                  curve: Curves.easeIn,
                  splash: 'assets/images/logo.png',
                  nextScreen: OnboardingScreen(),
                  splashTransition: SplashTransition.scaleTransition,
                  // pageTransitionType: PageTransitionType.bottomToTop,
                ),
              ),
            ],
          )),
    );
  }
}
