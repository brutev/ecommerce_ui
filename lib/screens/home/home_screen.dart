import 'package:ecommerce_ui/components/custom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Body(),
      bottomNavigationBar: CustomNavigatorBar(selectedMenu: MenuState.home),
    );
  }
}
