import 'package:ecommerce_ui/screens/details/components/product_description.dart';
import 'package:ecommerce_ui/screens/details/components/product_images.dart';
import 'package:ecommerce_ui/screens/details/components/top_rounded_container.dart';
import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
   final Product product;
   const Body ({ Key? key ,
     required this.product })
       : super (key: key );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundCorner(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription
                  (product: product,
                  pressonSeemore: () {  },),
                TopRoundCorner(
                  color:Color(0xFFF6F7F9),
                  child: ColorDot(product: product),
                ),
                TopRoundCorner(color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                      bottom: getProportionateScreenWidth(40),
                      top: getProportionateScreenWidth(15),
                    ),
                    child: DefaultButton(
                      text: "Add To Cart",
                      press: () {},
                    ),
                  ),
              ),
      ],
            ),
          ),
        ],
      ),
    );
  }
}

