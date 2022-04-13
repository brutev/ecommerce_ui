import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screens/splash/components/splash_content.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": "Welcome to Verge ,Let's shop",
        "image": "assets/images/splash_1.png",
      },
      {
        "text": "We help people connect with store \n around India ",
        "image": "assets/images/splash_2.png"
      },
      {
        "text": "We show the easy way to shop .\n Just stay at home with us",
        "image": "assets/images/splash_3.png"
      },
    ];
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]["text"]!,
                    image: splashData[index]["image"]!,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
                child: Column(
                  children:<Widget> [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(press: () {
                      Navigator.pushNamed(context,SignInScreen.routeName);
                    },
                      text: "continue",),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

