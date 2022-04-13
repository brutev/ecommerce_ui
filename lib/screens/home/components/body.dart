import 'package:ecommerce_ui/screens/home/components/popular_product.dart';
import 'package:ecommerce_ui/screens/home/components/special_offers.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Discountbanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Categories(),SizedBox(height: getProportionateScreenWidth(30),),
            SpecialOffersCard(),
            SizedBox(height: getProportionateScreenWidth(30),),
            PopularProduct(),
            SizedBox(height: getProportionateScreenWidth(30),),
          ],
        ),
      ),
    );
  }
}

