import 'package:ecommerce_ui/screens/cart/cart_screen.dart';
import 'package:ecommerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_ui/screens/details/details_screen.dart';
import 'package:ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screens/home/home_screen.dart';
import 'package:ecommerce_ui/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_ui/screens/otp/otp_screen.dart';
import 'package:ecommerce_ui/screens/profile/profile_screen.dart';
import 'package:ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName:(context)=> ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context) =>LoginSuccessScreen(),
  SignUpscreen.routeName:(context) =>SignUpscreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
  OtpScreen.routeName:(context) => OtpScreen(),
  HomeScreen.routeName:(context) => HomeScreen(),
  DetailsScreen.routeName:(context) => DetailsScreen(),
  Cart.routeName:(context) => Cart(),
  ProfileScreen.routeName:(context)=>ProfileScreen(),
};
