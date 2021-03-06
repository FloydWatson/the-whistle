import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:thewhistle/bootstrap.dart';
import 'package:thewhistle/view/styling/style.dart';

import 'core/auth/authenticationWrapper.dart';

void main() async {
  await boot();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MainTheme _mainThemeStyle = GetIt.I();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: _mainThemeStyle.primaryColor,
      ),
      home: AuthenticationWrapper(),
    );
  }
}


