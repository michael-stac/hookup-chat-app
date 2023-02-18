import 'package:flutter/material.dart';
import 'package:hook_up/splash_screen.dart';
import 'package:hook_up/styles/app_colors.dart';
import 'package:provider/provider.dart';

import 'Provider/bottom_nav_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ModelProviders()),

        ],
            child: MaterialApp(
              theme:  ThemeData(scaffoldBackgroundColor: AppColor.white, fontFamily: "Gilroy", appBarTheme: AppBarTheme(backgroundColor: AppColor.white, elevation: 0, )),
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            ),
    );
  }
}



