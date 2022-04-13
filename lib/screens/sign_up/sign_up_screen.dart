import 'package:ecommerce_ui/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUpscreen extends StatelessWidget {
  const SignUpscreen({Key? key}) : super(key: key);
 static String routeName ="/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
