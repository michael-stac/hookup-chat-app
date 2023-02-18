
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


void success(BuildContext context, {required String message}) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    icon: Icon(
      Icons.done,
      size: 28.0,
      color: AppColor.primaryColor,
    ),
    duration: const Duration(seconds: 5),
    leftBarIndicatorColor: AppColor.primaryColor,
  ).show(context);
}

void error(BuildContext context, {required String message}) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    icon: Icon(
      Icons.error,
      size: 28.0,
      color: AppColor.red,
    ),
    duration: const Duration(seconds: 5),
    leftBarIndicatorColor: AppColor.red,
  ).show(context);
}
