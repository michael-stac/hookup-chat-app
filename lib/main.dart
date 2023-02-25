import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hook_up/splash_screen.dart';
import 'package:hook_up/styles/app_colors.dart';
import 'package:provider/provider.dart';

import 'Provider/bottom_nav_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
              theme:  ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.white , appBarTheme: AppBarTheme(backgroundColor: AppColor.white, elevation: 0, )),
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            ),
    );
  }
}



