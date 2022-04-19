import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to +91 988 491 ****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight *0.1,),
              OtpForm(),
             SizedBox(height: SizeConfig.screenHeight*0.05,),
             GestureDetector(
               onTap: () {},
               child: Text(
                 "Resend OTP Code",style: TextStyle(
                 decoration: TextDecoration.underline,
               ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This code will expired in "),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0.0),
            duration: Duration(seconds: 30),
            builder: (_, dynamic value, child) => Text(
              "00:${value.toInt()}",
              style: TextStyle(color: kPrimaryColor),
            ),
            onEnd: (){},
          ),
        ],
      );
  }
}

