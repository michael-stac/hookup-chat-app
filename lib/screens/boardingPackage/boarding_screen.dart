import 'package:flutter/material.dart';
import 'package:hook_up/screens/boardingPackage/page.dart';

import '../../styles/app_colors.dart';
import '../../widgets/custom_button.dart';

class OnBoardingPage extends StatefulWidget {
  final List<Pages> boardingPages;
  final String? appName;

  final VoidCallback? continueProcess;
  final VoidCallback? skip;

  ///On Boarding constructor
  OnBoardingPage(this.boardingPages,
      {this.appName = '', this.skip, this.continueProcess});
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  List<int> selectedIndex = [0];
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: PageView(
                onPageChanged: (int value) {
                  if (selectedIndex.contains(value)) {
                    selectedIndex.remove(value);
                  } else {
                    selectedIndex.add(value);
                  }
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: controller,
                children: widget.boardingPages,
              ),
            ),



            // Container(
            //
            //   child:  GestureDetector(
            //     onTap: () {
            //       if ((currentIndex + 1) == widget.boardingPages.length) {
            //         ///Go to login page
            //         widget.continueProcess!.call();
            //       } else {
            //         controller.nextPage(
            //             duration: const Duration(milliseconds: 200),
            //             curve: Curves.easeIn);
            //       }
            //     },
            //     child: Icon(Icons.arrow_forward),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
