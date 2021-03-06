import 'package:ecommerce_ui/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenWidth *0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                const Text(
                  "Sign in with your email and password \n or continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenWidth *0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenWidth *0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height:
                  getProportionateScreenHeight(20),),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

