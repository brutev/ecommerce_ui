import 'package:ecommerce_ui/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import '../../components/custom_bottom_nav_bar.dart';
import '../../enums.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Profile"
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavigatorBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}


