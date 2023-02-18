import 'package:flutter/material.dart';
import 'package:hook_up/screens/boardingPackage/intro_page.dart';
import 'package:hook_up/styles/app_colors.dart';
import 'package:hook_up/utils/router.dart';

import 'main_activity.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(text: "Hook", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
            children: [
              TextSpan(text: "up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColor.red, fontStyle: FontStyle.italic)),
            ]
          ),

        ),
      ),

    );
  }

  void navigate() {
    Future.delayed(Duration(seconds: 3), () {
      nextPageAndRemovePrevious(context, page:  Intro());


    } );
  }


}
