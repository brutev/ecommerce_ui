import 'package:ecommerce_ui/routes.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:ecommerce_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Verge',
      theme:theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

