import 'package:flutter/material.dart';
import 'package:hook_up/main_activity.dart';
import 'package:hook_up/utils/router.dart';

import '../../styles/app_colors.dart';

class Pages extends StatefulWidget {
  final String? description;
  final String? imagePath;
  final String? title;
  Pages({this.description, this.title, this.imagePath, Key? key})
      : super(key: key);
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
               image: AssetImage(widget.imagePath!) )
         ),
          child: GestureDetector(
            onTap: () {
              nextPageAndRemovePrevious(context, page: const MainActivityPage());
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child:   CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  radius: 20,
                  child: Icon(Icons.arrow_forward, size: 28, ),
                ),
              ),
            ),
          ),
        )
        //Image
       // Container(
       //   decoration: BoxDecoration(
       //     image: DecorationImage( image: AssetImage(widget.imagePath!),
       //       fit: BoxFit.fill,
       //     )
       //   ),
       // ),



        //Description
      ],
    );
  }
}
