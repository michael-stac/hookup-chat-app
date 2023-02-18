import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


Widget customButton(BuildContext context,
    {required VoidCallback onTap,
      required String text,
      Color? bgColor,
      double? padding = 20,
      Color? textColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(
            color: bgColor ?? AppColor.white,
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? AppColor.primaryColor, fontFamily: ''),
        )),
  );
}
