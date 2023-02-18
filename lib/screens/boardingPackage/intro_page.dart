import 'package:flutter/material.dart';
import 'package:hook_up/screens/boardingPackage/page.dart';

import '../../utils/router.dart';
import 'boarding_screen.dart';


class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final List<Pages> boardingPages = <Pages>[
    Pages(

      imagePath: 'assets/images/onboarding_one.png',
    ),
    Pages(
      imagePath: 'assets/images/onboarding_twos.png',
    ),
    Pages(
      imagePath: 'assets/images/onboarding_threes.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      boardingPages,
      appName: '',
      skip: () {
        // nextPageAndRemovePrevious(context, page: const RegisterPage());
      },
      continueProcess: () {
        // nextPageAndRemovePrevious(context, page: const RegisterPage());
      },
    );
  }
}
